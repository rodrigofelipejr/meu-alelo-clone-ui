import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../resources/resources.dart';

class LastUpdateDateWidget extends StatelessWidget {
  final DateTime date;

  const LastUpdateDateWidget({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 36.0),
      child: Text(
        Formatters.dateDayMonthHourMinute(date),
        style: AppTypography.grayLight12w300Museo,
      ),
    );
  }
}
