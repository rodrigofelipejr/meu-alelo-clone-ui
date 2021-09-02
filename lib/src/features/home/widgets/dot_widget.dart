import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';

class DotWidget extends StatelessWidget {
  final bool active;

  const DotWidget({
    Key? key,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.0,
      width: 9.0,
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: active ? AppColors.grayMedium : AppColors.gray.withOpacity(0.6),
      ),
    );
  }
}
