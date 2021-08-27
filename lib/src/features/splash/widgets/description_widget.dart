import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';
import 'widgets.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleCheckWidget(),
        SizedBox(height: 12.0),
        Text(
          'pede\npronto',
          style: AppTypography.pink56w700Museo,
        ),
        SizedBox(height: 12.0),
        Padding(
          padding: const EdgeInsets.only(left: 3.0),
          child: Text(
            'Pronto, do seu jeito.',
            style: AppTypography.white18w700Museo,
          ),
        ),
      ],
    );
  }
}
