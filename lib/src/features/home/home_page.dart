import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../shared/constants/constants.dart';
import '../../shared/helpers/helpers.dart';
import '../../shared/resources/resources.dart';
import '../../shared/widgets/widgets.dart';
import 'home_store.dart';
import 'widgets/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final HomeStore _store;
  late final CarouselController _carouselController;
  late final List<Widget> _carouselSliderItems;

  @override
  void initState() {
    super.initState();

    _store = HomeStore();
    _carouselController = CarouselController();
    _carouselSliderItems = _buildCardWidgets(context);
  }

  List<Widget> _buildCardWidgets(BuildContext context) {
    Constants.cards.sort((a, b) => (b.blocked) ? -1 : 1);

    final widgets = Constants.cards
        .map<Widget>(
          (item) => Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: CardWidget(
              card: item,
              onTap: () => Navigator.of(context).pushNamed(AppRoutes.myCards, arguments: {'card': item}),
            ),
          ),
        )
        .toList();

    widgets.add(LastCardWidget());

    return widgets;
  }

  void _handleOnCardChanged(int index) {
    final isLastIndex = (_carouselSliderItems.length - 1) == index;

    _store.setState(
      _store.state.copyWith(
        currentIndexCard: index,
        showAllOptions: isLastIndex ? false : true,
        showUnlock: isLastIndex ? false : Constants.cards[index].blocked,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayWhite,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.85,
                  onPageChanged: (index, _) => _handleOnCardChanged(index),
                ),
                items: _carouselSliderItems,
                carouselController: _carouselController,
              ),
              LastUpdateDateWidget(
                date: DateTime.now(),
              ),
              Observer(
                builder: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _carouselSliderItems.map((e) {
                      return _carouselSliderItems.indexOf(e) == _store.state.currentIndexCard
                          ? DotWidget(active: true)
                          : DotWidget();
                    }).toList(),
                  );
                },
              ),
              Observer(
                builder: (_) {
                  return AnimatedSizeAndFade(
                    vsync: this,
                    show: _store.state.showAllOptions,
                    fadeDuration: Duration(milliseconds: 250),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: RowOptionsButtonWidget(),
                        ),
                        Observer(
                          builder: (_) {
                            return AnimatedSizeAndFade(
                              vsync: this,
                              show: _store.state.showUnlock,
                              fadeDuration: Duration(milliseconds: 250),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 24.0, left: 18.0, right: 18.0),
                                child: BottomUnlockWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 14.0),
                      child: Text(
                        'Mais Alelo',
                        style: AppTypography.black26w500Museo,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.violetDark,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 1.55,
                        crossAxisSpacing: 14.0,
                        mainAxisSpacing: 14.0,
                        children: Constants.smallCards
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
}
