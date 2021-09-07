import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/resources/resources.dart';
import '../../../../shared/widgets/widgets.dart';

class RowOptionsButtonWidget extends StatelessWidget {
  const RowOptionsButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Center(
            child: ButtonFAIconWidget(
              faIcon: FontAwesomeIcons.store,
              label: 'Onde Aceita',
            ),
          ),
        ),
        Container(
          color: AppColors.grayLight,
          height: 58.0,
          width: 1.0,
        ),
        Flexible(
          flex: 1,
          child: Center(
            child: ButtonFAIconWidget(
              faIcon: FontAwesomeIcons.tag,
              label: 'Ofertas Exclusivas',
            ),
          ),
        ),
      ],
    );
  }
}
