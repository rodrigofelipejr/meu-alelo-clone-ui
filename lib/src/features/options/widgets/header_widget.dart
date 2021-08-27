import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/resources/resources.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  final String label = 'Veja o que mais você pode no Meu Alelo';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.cogs,
            color: AppColors.greenDark,
            size: 40.0,
          ),
          SizedBox(height: 12.0),
          Text(
            label,
            style: AppTypography.gray14w300Museo,
          )
        ],
      ),
    );
  }
}
