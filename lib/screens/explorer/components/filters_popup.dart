import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_slider.dart';
import 'package:twelv/components/app_slider_range.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/recommendation/recommendations_filters.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';

class FiltersPopup extends StatefulWidget {
  final RecommendationsFilters recommendationsFilters;

  const FiltersPopup({
    required this.recommendationsFilters,
    Key? key,
  }) : super(key: key);

  @override
  _FiltersPopupState createState() => _FiltersPopupState();
}

class _FiltersPopupState extends State<FiltersPopup> {
  late int distance;
  late RangeValues ageRange;

  @override
  void initState() {
    distance = widget.recommendationsFilters.distance;
    ageRange = widget.recommendationsFilters.ageRange();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 60), // ignore: no-magic-number
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0), // ignore: no-magic-number
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  const _FiltersPopupTitle(),
                  _buildRanges(context),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: AppButtonFilled(
                      Str.of(context).filtersApplyButtonTitle,
                      enabled: _filtersChanged(),
                      onPressed: () {
                        final RecommendationsFilters filter = RecommendationsFilters.fromRange(
                            ageRange: ageRange, distance: distance);
                        context
                            .read<ExplorerBloc>()
                            .add(ExplorerEvent.filter(recommendationsFilters: filter));
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildRanges(BuildContext context) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[..._buildAgeRange(), ..._buildDistanceRange()],
        ),
      );

  // region SliderRange

  List<Widget> _buildAgeRange() => <Widget>[
        _FiltersPopupPadding(
          AppText(
            Str.of(context).filtersAgeRangeTitle,
            type: AppTextType.body2Bold,
          ),
          top: 10,
        ), // ignore: no-equal-arguments
        _FiltersPopupPadding(AppText(
          ageRange.start == ageRange.end
              ? "${ageRange.start.round()}"
              : "${ageRange.start.round()} - ${ageRange.end.round()}",
          type: AppTextType.body2,
          color: context.theme.accentSecondaryColor,
        )),
        AppRangeSlider(
          values: ageRange,
          min: RecommendationsFilters.defaultAgeMin.toDouble(),
          max: RecommendationsFilters.defaultAgeMax.toDouble(),
          divisions: RecommendationsFilters.defaultAgeMax - RecommendationsFilters.defaultAgeMin,
          onChanged: (RangeValues newValues) {
            setState(() {
              ageRange = newValues;
            });
          },
        ),
      ];

  List<Widget> _buildDistanceRange() => <Widget>[
        _FiltersPopupPadding(
          AppText(
            Str.of(context).filtersDistanceRangeTitle,
            type: AppTextType.body2Bold,
          ),
          top: 10,
        ), // ignore: no-equal-arguments
        _FiltersPopupPadding(AppText(
          "$distance km",
          type: AppTextType.body2,
          color: context.theme.accentSecondaryColor,
        )),
        _FiltersPopupPadding(AppSlider(
          min: RecommendationsFilters.distanceMin.toDouble(),
          max: RecommendationsFilters.distanceMax.toDouble(),
          value: distance.toDouble(),
          showLabel: false,
          division: RecommendationsFilters.distanceMax - RecommendationsFilters.distanceMin,
          onChanged: (double value) {
            setState(() {
              distance = value.round();
            });
          },
        )),
      ];

  // endregion

  // region Helpers

  bool _filtersChanged() => !_filtersNotChanged();

  bool _filtersNotChanged() =>
      widget.recommendationsFilters.distance == distance &&
      widget.recommendationsFilters.ageMin == ageRange.start.round() &&
      widget.recommendationsFilters.ageMax == ageRange.end.round();

  // endregion

}

class _FiltersPopupPadding extends StatelessWidget {
  final Widget widget;
  final double top;
  final double horizontalMargin;

  const _FiltersPopupPadding(
    this.widget, {
    this.top = 0,
    this.horizontalMargin = 20,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(
            horizontalMargin, top, horizontalMargin, 0), // ignore: no-magic-number
        child: widget,
      );
}

class _FiltersPopupTitle extends StatelessWidget {
  const _FiltersPopupTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Image(width: 40, height: 40, image: context.theme.closeImage)),
            const Spacer(),
            AppText(
              Str.of(context).filtersTitle,
              type: AppTextType.title2,
            ),
            const Spacer(),
            const SizedBox(
              width: 40,
            )
          ],
        ),
      );
}
