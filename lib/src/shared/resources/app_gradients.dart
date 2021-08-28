import 'package:flutter/material.dart';

import 'resources.dart';

class AppGradients {
  static Gradient gradientLime = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.3, 0.95],
    colors: [
      AppColors.limeMedium,
      AppColors.limeMedium,
      AppColors.lime,
    ],
  );

  static Gradient gradientGreen = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.1, 0.8, 1],
    colors: [
      AppColors.greenDark,
      AppColors.green,
      AppColors.green,
    ],
  );

  static Gradient gradientYellow = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2, 0.8],
    colors: [
      AppColors.yellow,
      AppColors.orange,
    ],
  );
}
