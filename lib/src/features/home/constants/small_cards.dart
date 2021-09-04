import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/resources/resources.dart';
import '../../../shared/widgets/widgets.dart';
import '../models/models.dart';

final List<SmallCardDataModel> smallCards = [
  SmallCardDataModel(
    background: AppColors.lime,
    label: 'Descontos e\nvantagens',
    labelColor: AppColors.greenDark,
    illustration: FlipWidget(
      child: FaIcon(
        FontAwesomeIcons.tags,
        color: AppColors.white,
        size: 32.0,
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
      size: 32.0,
    ),
  ),
  SmallCardDataModel(
    background: AppColors.orange,
    label: 'Precisa de\najuda?',
    labelColor: AppColors.white,
    illustration: FaIcon(
      FontAwesomeIcons.solidQuestionCircle,
      color: AppColors.white,
      size: 32.0,
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