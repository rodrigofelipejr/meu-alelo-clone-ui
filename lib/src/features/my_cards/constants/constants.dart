import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/models.dart';

class Constants {
  static final List<OptionModel> options = [
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
}
