import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRangeSlider extends StatefulWidget {
  final double min;
  final int? divisions;
  final double max;
  final RangeValues values;
  final ValueChanged<RangeValues>? onChanged;

  const AppRangeSlider({
    this.min = 0,
    this.max = 100,
    this.values = const RangeValues(0, 100),
    this.onChanged,
    this.divisions,
  });

  @override
  State<StatefulWidget> createState() => _AppRangeSliderState();
}

class _AppRangeSliderState extends State<AppRangeSlider> {
  RangeValues values = const RangeValues(0, 100);

  @override
  void initState() {
    super.initState();
    values = widget.values;
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: values.start < widget.min ||
              values.end > widget.max ||
              values.start > values.end ||
              values.end < values.start
          ? const RangeValues(0, 100)
          : values,
      min: widget.min,
      max: widget.max,
      divisions: widget.divisions,
      onChanged: (RangeValues values) {
        setState(() => this.values = values);
        widget.onChanged?.call(values);
      },
    );
  }
}

class ClearPaddingTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Offset offset = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
