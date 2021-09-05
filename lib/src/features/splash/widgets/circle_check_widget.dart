import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/resources/resources.dart';

class CircleCheckWidget extends StatelessWidget {
  const CircleCheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.0,
      width: 98.0,
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.circular(108.0),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            height: 62.0,
            width: 62.0,
            decoration: BoxDecoration(
              color: AppColors.violetDark,
              borderRadius: BorderRadius.circular(98.0),
            ),
          ),
          Positioned(
            left: -14.0,
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.check,
                    color: AppColors.violetDark,
                    size: 68.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 8.0),
                    child: FaIcon(
                      FontAwesomeIcons.check,
                      color: AppColors.yellowMatte,
                      size: 38.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
