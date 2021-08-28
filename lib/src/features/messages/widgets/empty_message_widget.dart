import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/helpers/helpers.dart';
import '../../../shared/resources/resources.dart';
import '../../../shared/widgets/widgets.dart';

class EmptyMessageWidget extends StatelessWidget {
  const EmptyMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: screenWidthPercentage(context) * 0.5,
          width: screenWidthPercentage(context) * 0.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.lime,
            borderRadius: BorderRadius.circular(200.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: screenWidthPercentage(context) * 0.04),
            child: FaIcon(
              FontAwesomeIcons.envelopeOpen,
              color: AppColors.white,
              size: screenWidthPercentage(context) * 0.28,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 18.0),
          child: Text(
            'Tudo em dia!',
            textAlign: TextAlign.center,
            style: AppTypography.green20w300Museo,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Text(
            'Você não recebeu nenhuma mensagem, assim que chagar a gente avisa.',
            textAlign: TextAlign.center,
            style: AppTypography.gray16w300Museo,
          ),
        ),
        SpaceWidget(height: screenHeightPercentage(context) * 0.05),
      ],
    );
  }
}
