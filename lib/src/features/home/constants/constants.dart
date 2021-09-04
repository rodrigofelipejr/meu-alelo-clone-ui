import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/resources/resources.dart';
import '../../../shared/widgets/widgets.dart';
import '../models/models.dart';

class Constants {
  static final List<CardDataModel> cards = [
    CardDataModel(
      label: 'Refeição',
      lastNumbers: 8975,
      balance: 0.0,
      type: TypeCard.secondary,
      blocked: true,
    ),
    CardDataModel(
      label: 'Alimentação',
      lastNumbers: 2846,
      balance: 413.78,
    ),
    CardDataModel(
      label: 'Alimentação',
      lastNumbers: 7847,
      balance: 847.35,
    ),
  ];

  static final List<SmallCardDataModel> smallCards = [
    SmallCardDataModel(
      background: AppColors.lime,
      label: 'Descontos e\nvantagens',
      labelColor: AppColors.greenDark,
      illustration: FlipWidget(
        child: FaIcon(
          FontAwesomeIcons.tags,
          color: AppColors.white,
          size: 30.0,
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
        size: 30.0,
      ),
    ),
    SmallCardDataModel(
      background: AppColors.orange,
      label: 'Precisa de\najuda?',
      labelColor: AppColors.white,
      illustration: FaIcon(
        FontAwesomeIcons.solidQuestionCircle,
        color: AppColors.white,
        size: 30.0,
      ),
    ),
    SmallCardDataModel(
      background: AppColors.blueDark,
      label: 'Precisa de\najuda?',
      labelColor: AppColors.white,
      backgroundTag: AppColors.lime,
      labelColorTag: AppColors.blueDark,
    ),
    SmallCardDataModel(
      background: AppColors.aqua,
      label: 'Tag de pedágio:\n2 anos grátis',
      labelColor: AppColors.blueDark,
      backgroundTag: AppColors.pink,
      labelColorTag: AppColors.white,
      illustration: SvgPicture.asset(
        AppImages.logoVeloe,
        fit: BoxFit.contain,
      ),
    ),
  ];
}
