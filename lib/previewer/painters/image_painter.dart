
import 'dart:ui';

import 'package:flutter/material.dart';

class OverlayImagePainter extends CustomPainter {
  List<Offset> points;

  OverlayImagePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    for (var point in points) {
      canvas.drawCircle(point, 10, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}


