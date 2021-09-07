import 'package:flutter/material.dart';

import '../resources/resources.dart';

class TouchRippleWidget extends StatelessWidget {
  final BorderRadius? borderRadius;
  final void Function()? onTap;
  final Widget child;

  const TouchRippleWidget({
    Key? key,
    required this.child,
    this.borderRadius,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
