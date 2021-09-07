import 'package:flutter/material.dart';

import '../../resources/resources.dart';
import 'pulse_animation_widget.dart';

class PadlockWidget extends StatelessWidget {
  final bool pulse;

  const PadlockWidget({Key? key, this.pulse = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (pulse) PulseAnimationWidget(size: 42.0),
        Container(
          height: 24.0,
          width: 24.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: AppGradients.gradientOrange,
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
