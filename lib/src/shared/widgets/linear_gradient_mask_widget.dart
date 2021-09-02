import 'package:flutter/material.dart';

class LinearGradientMaskWidget extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  const LinearGradientMaskWidget({Key? key, required this.child, required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8],
        colors: colors,
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
