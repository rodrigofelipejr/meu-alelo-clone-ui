import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/models.dart';
import '../resources/resources.dart';
import '../widgets/widgets.dart';

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

  static final List<OptionModel> optionsMyCards = [
    OptionModel(
      label: 'Extrato',
      faIcon: FontAwesomeIcons.solidChartBar,
    ),
    OptionModel(
      label: 'Onde aceita',
      faIcon: FontAwesomeIcons.store,
    ),
    OptionModel(
      label: 'Parde ou\nroubo',
      faIcon: FontAwesomeIcons.exclamationTriangle,
    ),
    OptionModel(
      label: 'Trocar a senha',
      faIcon: FontAwesomeIcons.key,
    ),
    OptionModel(
      label: 'Pague Delivery',
      faIcon: FontAwesomeIcons.shoppingBag,
    ),
    OptionModel(
      label: 'Ofertas\nExclusivas',
      faIcon: FontAwesomeIcons.tag,
    ),
  ];

  static final List<OptionModel> optionsMenus = [
    OptionModel(
      faIcon: FontAwesomeIcons.solidUser,
      label: 'Editar meu perfil',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.key,
      label: 'Alteração de senha',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.solidComments,
      label: 'Dúvidas e atendimento',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.fileContract,
      label: 'Termos de Uso',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.solidFile,
      label: 'Política de privacidade',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.solidStar,
      label: 'Avalie nosso aplicativo',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.solidCreditCard,
      label: 'Sobre o Meu Alelo',
    ),
    OptionModel(
      faIcon: FontAwesomeIcons.doorOpen,
      label: 'Sair',
    ),
  ];
}
