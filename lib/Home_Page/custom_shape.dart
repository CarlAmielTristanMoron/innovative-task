import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {

  @override
  void paint(Canvas canvas,Size size) {

    var paint = Paint()..color=Colors.white;
    paint.color = const Color.fromRGBO(255, 255, 255, 0.9921568627450981);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(const Offset(15.7, 16.6), 17,paint);//left
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
