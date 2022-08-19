import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/common/extensions/string_extension.dart';
import 'package:twelv/components/app_background_view.dart';
import 'package:twelv/components/app_current_user_inherited_widget.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/current_user.dart';
import 'package:twelv/model/zodiac/horoscope.dart';
import 'package:twelv/model/zodiac/zodiac_sign.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_bloc.dart';
import 'package:twelv/screens/home/horoscope/bloc/horoscope_state.dart';

class HoroscopeView extends StatelessWidget {
  const HoroscopeView({Key? key}) : super(key: key);

  // region Build

  @override
  Widget build(BuildContext context) => BlocConsumer<HoroscopeBloc, HoroscopeState>(
      listener: (BuildContext context, HoroscopeState state) {
        manageLoadingView(context, show: state is Loading);
        if (state is Error) {
          showErrorOverlay(state.error, context: context);
        }
      },
      builder: (BuildContext context, HoroscopeState state) => AppBackgroundContainer(
          backgroundImage: context.theme.horoscopeBackgroundImages,
          child: state is Succeeded
              ? SafeArea(child: _HoroscopeContentView(state.horoscope))
              : const SizedBox()));

// endregion
}

// region Content

class _HoroscopeContentView extends StatelessWidget {
  final Horoscope? _horoscope;

  const _HoroscopeContentView(this._horoscope);

  @override
  Widget build(BuildContext context) {
    final CurrentUser currentUser = CurrentUserWidget.of(context).currentUser;
    final bool isDifferentsSigns = currentUser.sunSign != currentUser.astrologicalSign;
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
        child: Material(
          elevation: 3,
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      AppText(
                        Str.of(context).horoscopeTitle,
                        align: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      _HoroscopeSignView(
                          isDifferentsSigns
                              ? Str.of(context).onboardingZodiacSignTitle
                              : Str.of(context).horoscopeZodiacSignsEqualsTitle,
                          currentUser.sunSign,
                          _horoscope),
                      if (isDifferentsSigns)
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: _HoroscopeSignView(
                              Str.of(context).onboardingZodiacAscendantSignTitle,
                              currentUser.astrologicalSign,
                              _horoscope),
                        )
                    ],
                  ),
                )),
          ),
        ));
  }
}

class _HoroscopeSignView extends StatelessWidget {
  final String _title;
  final ZodiacSign? _zodiacSign;
  final Horoscope? _horoscope;

  const _HoroscopeSignView(this._title, this._zodiacSign, this._horoscope);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: context.theme.accentColor),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Image(
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      image: _zodiacSign?.image(context) ?? context.theme.logoHeaderImage),
                  const SizedBox(width: 10),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: AppText(_title, type: AppTextType.titleLight3)),
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: AppText(
                          _zodiacSign?.name(context).capitalized() ?? "",
                          type: AppTextType.buttonFilled,
                          size: 20,
                        ))
                  ])
                ],
              ),
            ),
          ),
          if (_horoscope != null) ..._buildHoroscopeText(context, _horoscope!),
        ],
      );

  List<Widget> _buildHoroscopeText(BuildContext context, Horoscope horoscope) => <Widget>[
        const SizedBox(height: 15),
        AppText(
          horoscope.fromZodiacSign(_zodiacSign) ?? "",
          type: AppTextType.body1Accent,
          align: TextAlign.start,
          size: 18,
        )
      ];
}

// endregion
