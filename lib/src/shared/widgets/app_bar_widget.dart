import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/resources.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showIcon;
  final Color backgroundColor;
  final MainAxisAlignment mainAxisAlignment;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.showIcon = false,
    this.backgroundColor = AppColors.grayWhite,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: AppColors.green),
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: mainAxisAlignment,
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
