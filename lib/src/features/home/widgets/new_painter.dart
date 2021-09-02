import 'package:flutter/material.dart';

class NewPainter extends CustomPainter {
  final Color color;

  NewPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.004878244, size.height * 0.009259259);
    path_0.cubicTo(size.width * 0.004878244, size.height * 0.009259259, size.width * 0.9268293,
        size.height * 0.009269074, size.width * 0.9902439, size.height * 0.009259259);
    path_0.cubicTo(size.width * 1.073171, size.height * 1.583343, size.width * 0.2414639, size.height * 0.8333426,
        size.width * 0.004878244, size.height * 0.6944444);
    path_0.cubicTo(size.width * 0.004877780, size.height * 0.5694435, size.width * 0.004878244,
        size.height * 0.009259259, size.width * 0.004878244, size.height * 0.009259259);
    path_0.close();

    Paint paintFill0 = Paint()..style = PaintingStyle.fill;
    paintFill0.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paintFill0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
