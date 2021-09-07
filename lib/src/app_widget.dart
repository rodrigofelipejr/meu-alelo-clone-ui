import 'package:flutter/material.dart';

import 'features/features.dart';
import 'shared/resources/resources.dart';
import 'shared/widgets/widgets.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Alelo',
      scrollBehavior: ScrollBehaviorWidget(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.primaryMaterialColor,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.splash: (_) => SplashPage(),
        AppRoutes.home: (_) => HomePage(),
        AppRoutes.club: (_) => ClubPage(),
        AppRoutes.messages: (_) => MessagesPage(),
        AppRoutes.options: (_) => OptionsPage(),
        AppRoutes.myCards: (_) => MyCardsPage(),
      },
    );
  }
}
