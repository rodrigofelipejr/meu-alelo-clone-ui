import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/resources/resources.dart';

class MenuOptionsWidget extends StatelessWidget {
  const MenuOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: Constants.optionsMenus.length,
      itemBuilder: (context, index) {
        final option = Constants.optionsMenus[index];
        final bool isLast = (Constants.optionsMenus.length - 1) != index;

        return Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              ListTile(
                onTap: option.onTap,
                contentPadding: const EdgeInsets.only(left: 12.0, right: 8.0),
                horizontalTitleGap: 0.0,
                leading: Container(
                  child: FaIcon(
                    option.faIcon,
                    color: AppColors.green,
                    size: 18.0,
                    // size: 48.0,
                  ),
                ),
                title: Text(
                  option.label,
                  style: AppTypography.grayMedium16w300Museo.copyWith(fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.grayMedium,
                ),
              ),
              if (isLast)
                Divider(
                  height: 1.0,
                  color: AppColors.grayMedium,
                ),
            ],
          ),
        );
      },
    );
  }
}
