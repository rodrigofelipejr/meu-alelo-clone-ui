import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';

class ButtonVerticalWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final void Function()? onTap;
  final Color circleBackgroundColor;
  final String description;

  const ButtonVerticalWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.circleBackgroundColor = AppColors.green,
    this.description = '',
  }) : super(key: key);

  static final double sizeCircle = 44.0;

  List<TextSpan>? get textSpanChildren => description.isNotEmpty
      ? [
          TextSpan(text: '\n$description', style: AppTypography.grayDark12w300Museo),
        ]
      : null;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 80.0),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: sizeCircle,
            width: sizeCircle,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(sizeCircle * 2),
              color: circleBackgroundColor,
            ),
            alignment: Alignment.center,
            child: icon,
          ),
          SizedBox(height: 8.0),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '$title',
              style: AppTypography.grayDart12w700Museo,
              children: textSpanChildren,
            ),
          ),
        ],
      ),
    );
  }
}
