import 'package:flutter/material.dart';

import '../../../shared/helpers/formatters.dart';
import '../../../shared/models/models.dart';
import '../../../shared/resources/resources.dart';

class LastTransactionHistory extends StatelessWidget {
  final List<TransactionModel> transactions;

  const LastTransactionHistory({
    Key? key,
    this.transactions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Últimas atividades',
                  style: AppTypography.grayDart14w700Museo,
                ),
                if (transactions.isNotEmpty)
                  Row(
                    children: [
                      Text(
                        'Ver todas',
                        style: AppTypography.grayDart14w700Museo,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.grayDark,
                      ),
                    ],
                  )
              ],
            ),
          ),
          Divider(height: 1.0, color: AppColors.gray),
          transactions.isEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Text(
                    'Não existem transações recentes',
                    style: AppTypography.green16w700Museo,
                    textAlign: TextAlign.left,
                  ),
                )
              : ListView.separated(
                  itemCount: transactions.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => Divider(height: 1.0, color: AppColors.gray),
                  itemBuilder: (_, index) {
                    final transaction = transactions[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  transaction.establishment.toUpperCase(),
                                  style: AppTypography.grayDart16w500Museo,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '${Formatters.dateDayMonth(transaction.date)}',
                                  style: AppTypography.grayDart16w300Museo,
                                )
                              ],
                            ),
                          ),
                          Text(
                            '${Formatters.formatMoney(transaction.value)}',
                            style: AppTypography.grayDart16w500Museo,
                          ),
                        ],
                      ),
                    );
                  },
                )
        ],
      ),
    );
  }
}
