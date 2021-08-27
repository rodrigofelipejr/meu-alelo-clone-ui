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
    SystemChrome.setEnabledSystemUIOverlays([]);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3)).then(
        (_) => Navigator.of(context).pushReplacementNamed(AppRoutes.options),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.purple,
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
      ),
    );
  }
}
