
import 'dart:math' as math;

import 'package:flutter/material.dart';

class ShootingStare extends StatefulWidget {
  const ShootingStare({Key? key}) : super(key: key);

  @override
  State<ShootingStare> createState() => _ShootingStareState();
}

class _ShootingStareState extends State<ShootingStare>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child: CustomPaint(
        painter: ShootingStarPaint(
          animation: SizedBox() as Animation,
        ),
      ),
    );
  }
}

class ShootingStarPaint extends CustomPainter {
  final Animation animation;

  ShootingStarPaint({required this.animation}) : super(repaint: animation);
  @override
  void paint(Canvas canvas, Size size) {
    final bx = size.width / 2;
    final by = size.height;

    final starPaint = Paint()..strokeCap = StrokeCap.round;

    // draw the star with 5 points and the animation in the tail ,
  }

  // use this function to calculate the points of the star

  List<Map> calcStarPoints(
      centerX, centerY, innerCirclePoints, innerRadius, outerRadius) {
    final angle = ((math.pi) / innerCirclePoints);
    var angleOffsetToCenterStar = 0;

    var totalPoints = innerCirclePoints * 2;
    List<Map> points = [];
    for (int i = 0; i < totalPoints; i++) {
      bool isEvenIndex = i % 2 == 0;
      var r = isEvenIndex ? outerRadius : innerRadius;

      var currY =
          centerY + math.cos(i * angle + angleOffsetToCenterStar - 0.6) * r;
      var currX =
          centerX + math.sin(i * angle + angleOffsetToCenterStar - 0.6) * r;
      points.add({'x': currX, 'y': currY});
    }
    return points;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
