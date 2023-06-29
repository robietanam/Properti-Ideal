import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TargetPainter extends CustomPainter {
  const TargetPainter();

  @override
  void paint(Canvas canvas, Size size) {
    // Offset sets each circle's center
    canvas.drawRect(Rect.fromPoints(Offset(0, 0), Offset(100.w, 0.9.dp)),
        Paint()..color = const Color(0xFF004FA7));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
