import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/helpers/helpers.dart';
import '../../shared/resources/resources.dart';
import 'widgets/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2)).then(
        (_) => Navigator.of(context).pushReplacementNamed(AppRoutes.root),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violetDark,
      extendBody: true,
      body: Container(
        height: screenHeight(context),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.topRight,
          children: [
            DishWidget(),
            Padding(
              padding: EdgeInsets.all(
                screenHeightPercentage(context) * 0.05,
              ),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomLeft,
                children: [
                  LogoWidget(),
                  DescriptionWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
