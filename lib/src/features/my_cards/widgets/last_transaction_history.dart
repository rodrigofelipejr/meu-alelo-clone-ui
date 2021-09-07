import 'package:alelo/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class LastTransactionHistory extends StatelessWidget {
  
  const LastTransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Últimas atividades'),
            Row(
              children: [
                Text('Últimas atividades'),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.grayMedium,
                ),
              ],
            )
          ],
        ),
        Divider(
          height: 1.0,
          color: AppColors.grayMedium,
        ),
      ],
    );
  }
}
