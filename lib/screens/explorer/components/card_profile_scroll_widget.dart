import 'package:flutter/material.dart';

class CardProfileScrollWidget extends StatefulWidget {
  final ScrollController scrollController;
  final double scrollSize;
  final double scrollIndicatorHeight;
  final double scrollIndicatorWidth;
  final ValueChanged<bool> allowRotate;

  const CardProfileScrollWidget({
    required this.allowRotate,
    required this.scrollSize,
    required this.scrollIndicatorHeight,
    required this.scrollIndicatorWidth,
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  _CardProfileScrollWidgetState createState() => _CardProfileScrollWidgetState();
}

class _CardProfileScrollWidgetState extends State<CardProfileScrollWidget> {
  double _scrollPercentagePosition = 0;
  double accuracy = 0.01;
  bool _allowRotateLastState = true;

  void _scrollListener() {
    final double newPosition =
        widget.scrollController.position.pixels / widget.scrollController.position.maxScrollExtent;

    if ((newPosition - _scrollPercentagePosition).abs() >= accuracy) {
      setState(() {
        _scrollPercentagePosition = newPosition;
      });
    }

    if (_checkRotate(newPosition) != null) {
      _allowRotateLastState = _checkRotate(newPosition)!;
      widget.allowRotate(_allowRotateLastState);
    }
  }

  bool? _checkRotate(double newPosition) {
    if (newPosition <= accuracy * 1.5) {
      if (!_allowRotateLastState) {
        return true;
      }
    } else {
      if (_allowRotateLastState) {
        return false;
      }
    }
    return null;
  }

  @override
  void initState() {
    widget.scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.scrollSize * _scrollPercentagePosition,
      child: Container(
        height: widget.scrollIndicatorHeight,
        width: widget.scrollIndicatorWidth,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.5)),
          color: Colors.white,
        ),
      ),
    );
  }
}
