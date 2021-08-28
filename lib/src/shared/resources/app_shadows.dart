import 'package:flutter/material.dart';

import 'resources.dart';

class AppShadows {
  static List<BoxShadow> get shadowsSplash => [
        BoxShadow(
          color: AppColors.black.withOpacity(0.12),
          offset: Offset(-6.0, 0.0),
          blurRadius: 32.0,
          spreadRadius: 5.0,
        ),
        BoxShadow(
          color: AppColors.black.withOpacity(0.14),
          offset: Offset(-17.0, 0.0),
          blurRadius: 26.0,
          spreadRadius: 2.0,
        ),
        BoxShadow(
          color: AppColors.black.withOpacity(0.20),
          offset: Offset(-8.0, 0.0),
          blurRadius: 11.0,
          spreadRadius: -5.0,
        ),
      ];

  static List<BoxShadow> get shadowsCards => [
        BoxShadow(
          color: AppColors.black.withOpacity(0.12),
          offset: Offset(0.0, 1.0),
          blurRadius: 4.0,
        ),
        BoxShadow(
          color: AppColors.black.withOpacity(0.14),
          offset: Offset(0.0, 3.0),
          blurRadius: 2.0,
        ),
        BoxShadow(
          color: AppColors.black.withOpacity(0.20),
          offset: Offset(0.0, 3.0),
          blurRadius: 3.0,
          spreadRadius: -5.0,
        ),
      ];
}
