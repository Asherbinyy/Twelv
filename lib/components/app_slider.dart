import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatefulWidget {
  final double min;
  final double max;
  final double value;
  final int? division;
  final bool showLabel;
  final ValueChanged<double>? onChanged;

  const AppSlider(
      {this.min = 0,
      this.max = 100,
      this.value = 0,
      this.onChanged,
      this.division,
      this.showLabel = true});

  @override
  State<StatefulWidget> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double value = 0;

  @override
  void initState() {
    super.initState();
    value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value < widget.min || value > widget.max ? 0 : value,
      min: widget.min,
      max: widget.max,
      divisions: widget.division,
      label: widget.showLabel ? value.round().toString() : null,
      onChanged: (double value) {
        setState(() => this.value = value);
        widget.onChanged?.call(value);
      },
    );
  }
}
