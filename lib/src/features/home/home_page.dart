import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../shared/helpers/helpers.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/widgets.dart';
import 'models/models.dart';
import 'widgets/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CardDataModel> cards = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayLight,
      appBar: AppBarWidget(
        title: 'Olá, Rodrigo',
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: screenHeight(context),
            minWidth: screenWidth(context),
          ),
          // margin: const EdgeInsets.only(top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.85,
                ),
                items: cards.map(
                  (item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: CardWidget(
                            params: item,
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
