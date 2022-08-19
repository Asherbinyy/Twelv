import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_bloc.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';
import 'package:twelv/common/components/places_textfield/places_text_field.dart';
import 'package:twelv/common/extensions/date_extension.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_date_time_picker.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_field_dropdown.dart';
import 'package:twelv/components/app_text_field_location.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/onboarding/birth_data_view_data.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_bloc.dart';
import 'package:twelv/screens/onboarding/birthdata/bloc/onboarding_birth_data_event.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:twelv/screens/onboarding/bloc/onboarding_event.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';

class OnboardingBirthDataView extends StatefulWidget {
  final BirthDataViewBlocParentSettings settings;

  const OnboardingBirthDataView({required this.settings, Key? key}) : super(key: key);

  @override
  _OnboardingBirthDataViewState createState() => _OnboardingBirthDataViewState();
}

class _OnboardingBirthDataViewState extends State<OnboardingBirthDataView> {
  // region Properties

  late final TextEditingController _controller;
  DateTime? _birthDate;
  TimeOfDay? _birthTime;
  PlacesDetails? _placesDetails;

  final GlobalKey _placesTextFieldKey = GlobalKey();
  final DateTime _lastDate =
      DateTime(DateTime.now().year - 18, DateTime.now().month, DateTime.now().day);
  bool _isKeyboardVisible = false;

  // endregion

  // region Lifecycle

  @override
  void initState() {
    _controller = TextEditingController();
    _birthDate = widget.settings.birthDate;
    _birthTime = widget.settings.birthTime;
    _placesDetails = widget.settings.placeDetails;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.theme.primaryColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(context.theme.backImage.assetName),
            ),
            title: Center(
                child: Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Image(image: context.theme.logoHeaderImage)))),
        body: Stack(children: <Widget>[
          SizedBox(
              width: double.infinity,
              height: double.infinity, // ignore: no-equal-arguments
              child: Image(image: context.theme.onboardingBackgroundImage, fit: BoxFit.cover)),
          _buildContent(),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // endregion

  // region Build content

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          children: <Widget>[
            AppText(Str.of(context).onboardingBirthDataTitle),
            padded(
                AppText(Str.of(context).onboardingBirthDataDateInputTitle,
                    type: AppTextType.title3),
                top: 15),
            padded(
                AppTextFieldDropdown(
                    text: _formatDate(_birthDate),
                    hint: _formatDate(_lastDate),
                    onTap: () => _showBirthDatePicker()),
                top: 5),
            padded(
                AppText(Str.of(context).onboardingBirthDataPlaceInputTitle,
                    type: AppTextType.title3),
                top: 20),
            padded(_buildPlacesTextField(), top: 5),
            padded(
                AppText(Str.of(context).onboardingBirthDataTimeInputTitle,
                    type: AppTextType.title3),
                top: 20),
            padded(
                AppTextFieldDropdown(
                    text: _formatTime(_birthTime),
                    hint: _formatTime(const TimeOfDay(hour: 12, minute: 0)),
                    onTap: () => _showBirthHourPicker()),
                top: 5),
            padded(AppText(Str.of(context).onboardingBirthDataDescription, type: AppTextType.body2),
                top: 15, bottom: _isKeyboardVisible ? MediaQuery.of(context).viewInsets.bottom : 0),
          ],
        )),
        Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
            child: AppButtonFilled(
              widget.settings.isEdit
                  ? Str.of(context).generalUpdateAPIButtonTitle
                  : Str.of(context).commonContinue,
              enabled: _birthDate != null && _placesDetails != null && _birthTime != null,
              onPressed: () => _continue(),
            ))
      ],
    );
  }

  Widget _buildPlacesTextField() => BlocProvider<PlacesTextFieldBloc>(
        key: _placesTextFieldKey,
        create: (BuildContext context) => DependenciesContainer().get<PlacesTextFieldBloc>(),
        child: PlacesTextField(
          textFieldBuilder: (FocusNode focusNode, TextEditingController controller,
              ValueChanged<String>? onChanged) {
            return AppTextFieldWithIcon(
                hint: Str.of(context).onboardingBirthDataPlaceInputPlaceholder,
                leftIcon: context.theme.locationIconImage,
                onChanged: onChanged,
                focusNode: focusNode
                  ..addListener(() {
                    _isKeyboardVisible = focusNode.hasFocus;
                    setState(() {});
                    Future<void>.delayed(const Duration(milliseconds: 350), () {
                      if (_placesTextFieldKey.currentContext != null) {
                        Scrollable.ensureVisible(_placesTextFieldKey.currentContext!,
                            duration: const Duration(milliseconds: 150));
                      }
                    });
                  }),
                controller: controller);
          },
          dropdownItemsBuilder: (List<String> predictions) =>
              _buildPlacesTextFieldDropdownItems(predictions),
          initialLocation: _placesDetails,
          onLocationSelected: (PlacesDetails? location) => setState(() {
            _placesDetails = location;
          }),
          poweredByGoogleImage: context.theme.poweredByGoogleImage,
          errorMessage: Str.of(context).placesTextFieldErrorMessage,
          noResultsMessage: Str.of(context).placesTextFieldNoResultsMessage,
        ),
      );

  List<Widget> _buildPlacesTextFieldDropdownItems(List<String> predictions) => predictions
      .map((String prediction) => SizedBox(
          height: 50, // ignore: no-magic-number
          child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: AppText(prediction, type: AppTextType.input)))))
      .toList();

  // endregion

  // region Date and time picker

  void _showBirthDatePicker() => showAppDatePicker(
        context,
        firstDate: DateTime(DateTime.now().year - 100, DateTime.now().month, DateTime.now().day),
        lastDate: _lastDate,
        initialDate: _birthDate ?? _lastDate,
        onDatePicked: (DateTime date) => setState(() {
          _birthDate = date;
        }),
      );

  void _showBirthHourPicker() => showAppTimePicker(context,
      initialTime: _birthTime ?? TimeOfDay.now(),
      onTimePicked: (TimeOfDay time) => setState(() {
            _birthTime = time;
          }));

  String _formatDate(DateTime? date) =>
      DependenciesContainer()
          .get<FormatterService>()
          .date
          .format(date, inFormat: AppDateFormat.birth) ??
      "";

  String _formatTime(TimeOfDay? time) =>
      DependenciesContainer()
          .get<FormatterService>()
          .date
          .format(time?.toDateTime(onDate: DateTime.now()), inFormat: AppDateFormat.birthTime) ??
      "";

  // endregion

  // region Action

  void _continue() {
    if (_birthDate == null || _birthTime == null || _placesDetails == null) {
      return;
    }

    if (widget.settings.isEdit) {
      Navigator.of(context).pop(BirthDataViewData(
          birthDate: _birthDate,
          birthTime: _birthTime,
          birthPlaceName: _placesDetails?.name,
          birthLon: _placesDetails?.lng,
          birthLat: _placesDetails?.lat));
    } else {
      context.read<OnboardingBloc>().add(OnboardingEvent.birthDataEntered(
          birthDate: _birthDate, birthTime: _birthTime, birthLocation: _placesDetails));
      context
          .read<OnboardingBirthDataBloc>()
          .add(const OnboardingBirthDataEvent.birthDataEntered());
    }
  }

  // endregion

}
