import 'package:flutter/material.dart';

import 'resources.dart';

class AppGradients {
  static Gradient gradientLime = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.15, 0.9],
    colors: [
      AppColors.limeDarkGradient,
      AppColors.limeGradient,
    ],
  );

  static Gradient gradientGreen = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.15, 0.9],
    colors: [
      AppColors.greenDarkGradient,
      AppColors.greenGradient,
    ],
  );

  static Gradient gradientOrange = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2, 0.8],
    colors: [
      AppColors.orangeGradient,
      AppColors.orangeDarkGradient,
    ],
  );
}
