import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/resources.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showIcon;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.showIcon = false,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.grayWhite,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTypography.green18w500Museo,
          ),
          if (showIcon)
            Container(
              margin: const EdgeInsets.only(left: 6.0),
              padding: const EdgeInsets.all(1.0),
              child: SvgPicture.asset(
                AppImages.smile,
                fit: BoxFit.contain,
              ),
              width: 18.0,
            ),
        ],
      ),
      centerTitle: true,
    );
  }
}
