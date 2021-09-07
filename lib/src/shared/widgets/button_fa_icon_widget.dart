import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../resources/resources.dart';

class ButtonFAIconWidget extends StatelessWidget {
  final IconData faIcon;
  final String label;
  final bool fontBold;
  final double size;

  const ButtonFAIconWidget({
    Key? key,
    required this.faIcon,
    required this.label,
    this.fontBold = false,
    this.size = 20.0,
  }) : super(key: key);

  TextStyle get style => fontBold ? AppTypography.grayMedium14w700Museo : AppTypography.grayMedium14w500Museo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(
          faIcon,
          color: AppColors.green,
          size: size,
        ),
        SizedBox(height: 12.0),
        Text(
          label,
          style: style,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
