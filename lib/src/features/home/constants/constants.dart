import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/resources/resources.dart';
import '../../../shared/widgets/widgets.dart';
import '../models/models.dart';

class Constants {
  static final List<SmallCardDataModel> smallCards = [
    SmallCardDataModel(
      background: AppColors.lime,
      label: 'Descontos e\nvantagens',
      labelColor: AppColors.greenDark,
      illustration: FlipWidget(
        child: FaIcon(
          FontAwesomeIcons.tags,
          color: AppColors.white,
          size: 29.0,
        ),
      ),
    ),
    SmallCardDataModel(
      background: AppColors.green,
      label: 'Adicionar\ncartão',
      labelColor: AppColors.white,
      illustration: FaIcon(
        FontAwesomeIcons.creditCard,
        color: AppColors.lime,
        size: 29.0,
      ),
    ),
    SmallCardDataModel(
      background: AppColors.orangeDark,
      label: 'Precisa de\najuda?',
      labelColor: AppColors.white,
      illustration: FaIcon(
        FontAwesomeIcons.solidQuestionCircle,
        color: AppColors.white,
        size: 31.0,
      ),
    ),
    SmallCardDataModel(
      background: AppColors.aquaDark,
      label: 'Precisa de\najuda?',
      labelColor: AppColors.white,
      backgroundTag: AppColors.lime,
      labelColorTag: AppColors.aquaDark,
    ),
    SmallCardDataModel(
      background: AppColors.aqua,
      label: 'Tag de pedágio:\n2 anos grátis',
      labelColor: AppColors.white,
      backgroundTag: AppColors.pinkDark,
      labelColorTag: AppColors.white,
      illustration: SvgPicture.asset(
        AppImages.logoVeloe,
        fit: BoxFit.contain,
      ),
    ),
  ];
}
