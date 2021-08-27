import 'package:alelo/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  double get defaultSize => 40.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: defaultSize,
            width: defaultSize,
            child: CircularProgressIndicator(
              color: AppColors.greenDark,
              strokeWidth: 4.5,
            ),
          ),
          SizedBox(height: 14.0),
          Text(
            'Carregando...',
            style: AppTypography.green16w500Museo,
          ),
        ],
      ),
    );
  }
}
