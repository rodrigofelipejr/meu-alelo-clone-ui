import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/helpers/helpers.dart';
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
  late CardDataModel _currentCard;

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map;
    if (arguments.isNotEmpty) _currentCard = arguments['card'];

    return Scaffold(
      backgroundColor: AppColors.grayWhite,
      appBar: AppBarWidget(
        title: 'Meus cartões',
        backgroundColor: AppColors.white,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: screenHeight(context),
            minWidth: screenWidth(context),
          ),
          child: Column(
            children: [
              ScrollCardsWidget(
                listCards: Constants.cards,
                currentCard: _currentCard,
              ),
              SizedBox(height: 12.0),
              CardWidget(card: _currentCard),
              LastUpdateDateWidget(date: DateTime.now()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
                child: GridOptionsWidget(),
              ),
              LastTransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
