import 'package:flutter/material.dart';

class LinesPainter extends CustomPainter {
  final Color color;

  LinesPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final double widthStroke = 1.1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1619537, size.height * 0.2129630);
    path_0.lineTo(size.width * 0.1850900, size.height * 0.2129630);
    path_0.cubicTo(size.width * 0.2058643, size.height * 0.2129630, size.width * 0.2185090, size.height * 0.2990352,
        size.width * 0.2185090, size.height * 0.4444444);
    path_0.lineTo(size.width * 0.2185090, size.height * 0.5925926);

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paint0Stroke.color = color;
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2185090, size.height * 0.5925926);
    path_1.lineTo(size.width * 0.2185090, size.height * 0.7443537);
    path_1.cubicTo(size.width * 0.2185090, size.height * 0.8933093, size.width * 0.2309396, size.height * 0.9814815,
        size.width * 0.2513617, size.height * 0.9814815);
    path_1.lineTo(size.width * 0.2728432, size.height * 0.9814815);
    path_1.lineTo(size.width * 0.4421594, size.height * 0.9814815);
    path_1.lineTo(size.width * 0.5681234, size.height * 0.9814815);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paint1Stroke.color = color;
    canvas.drawPath(path_1, paint1Stroke);

    Path path_2 = Path();
    path_2.moveTo(size.width, size.height * 0.01851870);
    path_2.lineTo(size.width * 0.8380463, size.height * 0.01851870);
    path_2.lineTo(size.width * 0.8161954, size.height * 0.01851870);
    path_2.cubicTo(size.width * 0.7954216, size.height * 0.01851870, size.width * 0.7827763, size.height * 0.1045907,
        size.width * 0.7827763, size.height * 0.2500000);
    path_2.lineTo(size.width * 0.7827763, size.height * 0.3981481);

    Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paint2Stroke.color = color;
    canvas.drawPath(path_2, paint2Stroke);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5591260, size.height * 0.9814815);
    path_3.lineTo(size.width * 0.7284422, size.height * 0.9814815);
    path_3.lineTo(size.width * 0.7499229, size.height * 0.9814815);
    path_3.cubicTo(size.width * 0.7703470, size.height * 0.9814815, size.width * 0.7827763, size.height * 0.8933093,
        size.width * 0.7827763, size.height * 0.7443537);
    path_3.lineTo(size.width * 0.7827763, size.height * 0.3981500);

    Paint paint3Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paint3Stroke.color = color;
    canvas.drawPath(path_3, paint3Stroke);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.002565203, size.height * 0.2129630);
    path_4.lineTo(size.width * 0.03598972, size.height * 0.2129630);

    Paint paint4Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = widthStroke;
    paint4Stroke.color = color;
    canvas.drawPath(path_4, paint4Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
