import 'package:flutter/material.dart';

import '../../../shared/widgets/widgets.dart';
import '../constants/constants.dart';

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
      children: List.generate(Constants.options.length, (index) {
        final option = Constants.options[index];
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
