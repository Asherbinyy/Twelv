import 'dart:math';

import 'package:flutter/material.dart';

class AppPaintPieChartCircleBorderView extends StatelessWidget {
  final double circlePart;
  final Color color;
  final double radius;

  const AppPaintPieChartCircleBorderView(
      {required this.circlePart, required this.color, required this.radius, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius * 2,
      height: radius * 2,
      child: CustomPaint(
        foregroundPainter: AppCirclePieLinePainter(color: color, circlePart: circlePart),
      ),
    );
  }
}

class AppCirclePieLinePainter extends CustomPainter {
  final double circlePart;
  final Color color;
  final double strokeWidth;

  const AppCirclePieLinePainter(
      {required this.circlePart, required this.color, this.strokeWidth = 5});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = size.width / 2;
    const double startRadian = -1.5;
    final double endRadian = circlePart * 360 * pi / 180;

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), startRadian, endRadian, false, paint);

    final double smallR = paint.strokeWidth / 2;
    paint.strokeWidth = smallR;

    final Point<num> startCenter = LineCircleHelper.calculateRadianPoint(
        Point<num>(center.dx, center.dy), radius, startRadian);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(startCenter.x.toDouble(), startCenter.y.toDouble()), smallR, paint);

    final Point<num> endCenter = LineCircleHelper.calculateRadianPoint(
        Point<num>(center.dx, center.dy), radius, startRadian + endRadian);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(endCenter.x.toDouble(), endCenter.y.toDouble()), smallR, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class LineCircleHelper {
  static Point<num> calculateRadianPoint(Point<num> center, double r, double radian) {
    return Point<num>(center.x + r * cos(radian), center.y + r * sin(radian));
  }
}
