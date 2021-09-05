import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/helpers/helpers.dart';
import '../../../../shared/widgets/widgets.dart';

class LastCardWidget extends StatelessWidget {
  const LastCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonIconWidget(
            icon: FontAwesomeIcons.plusCircle,
            label: 'Adicionar\ncartão',
            fontBold: true,
          ),
          SizedBox(width: screenWidthPercentage(context) * 0.13),
          ButtonIconWidget(
            icon: FontAwesomeIcons.layerGroup,
            label: 'Organizar\ncartões',
            fontBold: true,
          ),
        ],
      ),
    );
  }
}
