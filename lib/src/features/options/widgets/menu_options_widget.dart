import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/resources/resources.dart';
import '../constants/constants.dart';

class MenuOptionsWidget extends StatelessWidget {
  const MenuOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final Option option = menuItems[index];
        final bool isLast = (menuItems.length - 1) != index;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              ListTile(
                onTap: option.onTap,
                contentPadding: const EdgeInsets.only(left: 12.0, right: 8.0),
                horizontalTitleGap: 0.0,
                leading: Container(
                  child: FaIcon(
                    option.icon,
                    color: AppColors.greenDark,
                    size: 18.0,
                    // size: 48.0,
                  ),
                ),
                title: Text(
                  option.label,
                  style: AppTypography.gray16w300Museo.copyWith(fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.gray,
                ),
              ),
              if (isLast)
                Divider(
                  height: 1.0,
                  color: AppColors.gray,
                ),
            ],
          ),
        );
      },
    );
  }
}
