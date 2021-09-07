import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/constants/constants.dart';
import '../../shared/models/models.dart';
import '../../shared/resources/app_colors.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/widgets.dart';
import 'widgets/widgets.dart';

class MyCardsPage extends StatefulWidget {
  const MyCardsPage({Key? key}) : super(key: key);

  @override
  _MyCardsPageState createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
  late CardDataModel _current;

  List<Widget> _buildOptions(BuildContext context) {
    final widgets = Constants.cards.map<Widget>(
      (e) {
        final disabled = _current.lastNumbers != e.lastNumbers;
        final circleBackgroundColor = disabled
            ? AppColors.gray
            : e.type == TypeCard.primary
                ? AppColors.green
                : AppColors.lime;
        final icon = e.type == TypeCard.primary ? FontAwesomeIcons.shoppingCart : FontAwesomeIcons.utensils;

        return ConditionalParentWidget(
          condition: e.blocked,
          conditionalBuilder: (Widget child) => Stack(
            children: [
              child,
              Positioned(
                top: 2.0,
                right: 8.0,
                child: PadlockWidget(pulse: false),
              ),
            ],
          ),
          child: ButtonVerticalWidget(
            title: e.label,
            description: e.lastNumbers.toString(),
            circleBackgroundColor: circleBackgroundColor,
            onTap: () {},
            icon: FaIcon(
              icon,
              color: AppColors.white,
              size: ButtonVerticalWidget.sizeCircle * 0.38,
            ),
          ),
        );
      },
    ).toList();

    widgets.add(
      ButtonVerticalWidget(
        title: 'Adicionar\ncartão',
        onTap: () {},
        icon: FaIcon(
          FontAwesomeIcons.plusCircle,
          color: AppColors.green,
          size: ButtonVerticalWidget.sizeCircle * 0.4,
        ),
        circleBackgroundColor: AppColors.transparent,
      ),
    );

    widgets.add(
      ButtonVerticalWidget(
        title: 'Organizar\ncartões',
        onTap: () {},
        icon: FaIcon(
          FontAwesomeIcons.layerGroup,
          color: AppColors.green,
          size: ButtonVerticalWidget.sizeCircle * 0.4,
        ),
        circleBackgroundColor: AppColors.transparent,
      ),
    );

    return widgets
        .map<Widget>((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 5.0),
              child: e,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;
    if (arguments.isNotEmpty) _current = arguments['card'];

    return Scaffold(
      backgroundColor: AppColors.grayWhite,
      appBar: AppBarWidget(
        title: 'Meus cartões',
        backgroundColor: AppColors.white,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildOptions(context),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          CardWidget(card: _current),
          LastUpdateDateWidget(
            date: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
