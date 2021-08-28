import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';
import 'pulse_animation_widget.dart';

class PadlockWidget extends StatelessWidget {
  const PadlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PulseAnimationWidget(size: 42.0),
        Container(
          height: 24.0,
          width: 24.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: AppColors.yellow,
            gradient: AppGradients.gradientYellow,
          ),
          child: Icon(
            Icons.lock_outline,
            color: AppColors.white,
            size: 14.0,
          ),
        ),
      ],
    );
  }
}
