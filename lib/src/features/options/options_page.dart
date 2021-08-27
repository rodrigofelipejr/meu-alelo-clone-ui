import 'package:alelo/src/shared/resources/app_colors.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/widgets.dart';
import 'widgets/widgets.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Mais opções'),
      backgroundColor: AppColors.grayLight,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            HeaderWidget(),
            MenuOptionsWidget(),
          ],
        ),
      ),
    );
  }
}
