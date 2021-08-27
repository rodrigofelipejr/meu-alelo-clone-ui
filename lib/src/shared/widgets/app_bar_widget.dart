import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.grayLight,
      title: Text(
        title,
        style: AppTypography.green18w500Museo,
      ),
      centerTitle: true,
    );
  }
}
