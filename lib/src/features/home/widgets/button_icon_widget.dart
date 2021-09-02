import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/resources/resources.dart';

class ButtonIconWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool fontBold;
  final double size;

  const ButtonIconWidget({
    Key? key,
    required this.icon,
    required this.label,
    this.fontBold = false,
    this.size = 20.0,
  }) : super(key: key);

  TextStyle get style => fontBold ? AppTypography.gray14w700Museo : AppTypography.grayDart14w300Museo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(
          icon,
          color: AppColors.greenMedium,
          size: size,
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: style,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
