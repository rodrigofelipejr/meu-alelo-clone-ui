import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/models/models.dart';
import '../../../shared/resources/resources.dart';
import '../../../shared/widgets/widgets.dart';
import 'widgets.dart';

class ScrollCardsWidget extends StatelessWidget {
  final CardDataModel currentCard;
  final List<CardDataModel> listCards;

  const ScrollCardsWidget({
    Key? key,
    required this.currentCard,
    required this.listCards,
  }) : super(key: key);

  List<Widget> _buildOptions(BuildContext context) {
    final widgets = listCards.map<Widget>(
      (e) {
        final disabled = currentCard.lastNumbers != e.lastNumbers;
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildOptions(context),
        ),
      ),
    );
  }
}
