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
      theme: ThemeData(
        primarySwatch: AppColors.primaryMaterialColor,
      ),
      home: ClubPage(),
    );
  }
}
