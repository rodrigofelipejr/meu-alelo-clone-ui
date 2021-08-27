import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: SizedBox(
          height: 42.0,
          child: Image.asset(
            AppImages.logoAleloWhite,
          ),
        ),
      ),
    );
  }
}
