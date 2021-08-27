import 'package:flutter/material.dart';

import '../../../shared/helpers/helpers.dart';
import '../../../shared/resources/resources.dart';

class DishWidget extends StatelessWidget {
  const DishWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseSize = screenHeightPercentage(context) * 0.60;

    return Positioned(
      right: -(baseSize / 2.3),
      top: screenHeightPercentage(context) * 0.075,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(300.0),
          color: AppColors.white,
          boxShadow: AppShadows.shadowsSplash,
        ),
        height: baseSize,
        width: baseSize,
      ),
    );
  }
}
