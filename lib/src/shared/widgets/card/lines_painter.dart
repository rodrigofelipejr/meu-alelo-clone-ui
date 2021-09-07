import 'package:flutter/material.dart';

class LinesPainter extends CustomPainter {
  final Color color;

  LinesPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final double widthStroke = 1.1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.001285347, size.height * 0.2129630);
    path_0.lineTo(size.width * 0.1619537, size.height * 0.2129630);
    path_0.lineTo(size.width * 0.1838046, size.height * 0.2129630);
    path_0.cubicTo(size.width * 0.2045789, size.height * 0.2129630, size.width * 0.2172237, size.height * 0.2990352,
        size.width * 0.2172237, size.height * 0.4444444);
    path_0.lineTo(size.width * 0.2172237, size.height * 0.5925926);

    Paint paintStroke0 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paintStroke0.color = color;
    canvas.drawPath(path_0, paintStroke0);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2172237, size.height * 0.5925926);
    path_1.lineTo(size.width * 0.2172237, size.height * 0.7443537);
    path_1.cubicTo(size.width * 0.2172237, size.height * 0.8933093, size.width * 0.2296542, size.height * 0.9814815,
        size.width * 0.2500763, size.height * 0.9814815);
    path_1.lineTo(size.width * 0.2715578, size.height * 0.9814815);
    path_1.lineTo(size.width * 0.4408740, size.height * 0.9814815);
    path_1.lineTo(size.width * 0.5668380, size.height * 0.9814815);

    Paint paintStroke1 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paintStroke1.color = color;
    canvas.drawPath(path_1, paintStroke1);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5578406, size.height * 0.9814815);
    path_2.lineTo(size.width * 0.7271568, size.height * 0.9814815);
    path_2.lineTo(size.width * 0.7486375, size.height * 0.9814815);
    path_2.cubicTo(size.width * 0.7690617, size.height * 0.9814815, size.width * 0.7814910, size.height * 0.8933093,
        size.width * 0.7814910, size.height * 0.7443537);
    path_2.lineTo(size.width * 0.7814910, size.height * 0.3981500);

    Paint paintStroke2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paintStroke2.color = color;
    canvas.drawPath(path_2, paintStroke2);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9987147, size.height * 0.01851870);
    path_3.lineTo(size.width * 0.8367609, size.height * 0.01851870);
    path_3.lineTo(size.width * 0.8149100, size.height * 0.01851870);
    path_3.cubicTo(size.width * 0.7941362, size.height * 0.01851870, size.width * 0.7814910, size.height * 0.1045907,
        size.width * 0.7814910, size.height * 0.2500000);
    path_3.lineTo(size.width * 0.7814910, size.height * 0.3981481);

    Paint paintStroke3 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paintStroke3.color = color;
    canvas.drawPath(path_3, paintStroke3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
