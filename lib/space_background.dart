import 'package:flutter/material.dart';

class SpaceBackGround extends StatefulWidget {
  const SpaceBackGround({super.key});

  @override
  State<SpaceBackGround> createState() => _SpaceBackGroundState();
}

class _SpaceBackGroundState extends State<SpaceBackGround> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomPaint(
        painter: SpacePainter(),
      ),
    );
  }
}


class SpacePainter extends CustomPainter {
  SpacePainter() : super();
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    // TODO : CREATE THE SKY BACK GROUND
    //  dont forget to implement the animation and the sphere
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
