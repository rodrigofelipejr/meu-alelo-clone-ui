import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/helpers/helpers.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/widgets.dart';
import 'constants/constants.dart';
import 'home_controller.dart';
import 'widgets/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController _controller;

  @override
  void initState() {
    super.initState();
    _controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayLight,
      appBar: AppBarWidget(
        title: 'Olá, Rodrigo',
        showIcon: true,
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
                items: _buildCardWidgets(context),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
                child: Text(
                  _controller.lastUpdate,
                  style: AppTypography.gray12w300Museo,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotWidget(active: true),
                  DotWidget(),
                  DotWidget(),
                  DotWidget(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: ButtonIconWidget(
                          icon: FontAwesomeIcons.store,
                          label: 'Onde Aceita',
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.gray.withOpacity(0.5),
                      height: 58.0,
                      width: 1.0,
                    ),
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: ButtonIconWidget(
                          icon: FontAwesomeIcons.tag,
                          label: 'Ofertas Exclusivas',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: screenWidth(context),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: LinearGradientMaskWidget(
                          colors: [
                            AppColors.yellow,
                            AppColors.orange,
                          ],
                          child: Icon(
                            Icons.lock_outline,
                            color: AppColors.white,
                          ),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            'DESBLOQUEAR SEU CARTÃO',
                            style: AppTypography.grayDart16w500Museo,
                          ),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0.0),
                          backgroundColor: MaterialStateProperty.all<Color>(AppColors.transparent),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 12.0)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(color: AppColors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 14.0),
                      child: Text(
                        'Mais Alelo',
                        style: AppTypography.black26w500Museo,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.violet,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      padding: const EdgeInsets.all(14.0),
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Descontos',
                          style: AppTypography.white20w700Museo,
                          children: const <TextSpan>[
                            TextSpan(
                              text: ' em\nsuas\nrefeições?\nTemos!',
                              style: AppTypography.white20w500Museo,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: 1.55,
                        crossAxisSpacing: 14.0,
                        mainAxisSpacing: 14.0,
                        shrinkWrap: true,
                        children: smallCards
                            .map((e) => SmallCardWidget(
                                  background: e.background,
                                  label: e.label,
                                  labelColor: e.labelColor,
                                  backgroundTag: e.backgroundTag,
                                  labelColorTag: e.labelColorTag,
                                  illustration: e.illustration,
                                  // backgroundTag: AppColors.pink,
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildCardWidgets(BuildContext context) {
    List<Widget> widgets = [];

    widgets.addAll(cards.map(
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
    ).toList());

    widgets.add(
      LastCardWidget(),
    );

    return widgets;
  }
}
