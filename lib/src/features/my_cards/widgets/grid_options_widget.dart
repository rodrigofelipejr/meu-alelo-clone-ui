import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/widgets/widgets.dart';

class GridOptionsWidget extends StatelessWidget {
  const GridOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      children: List.generate(Constants.optionsMyCards.length, (index) {
        final option = Constants.optionsMyCards[index];
        return Center(
          child: ButtonFAIconWidget(
            faIcon: option.faIcon,
            label: option.label,
          ),
        );
      }),
    );
  }
}
