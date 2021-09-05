import 'package:flutter/material.dart';

import '../../../../shared/helpers/helpers.dart';
import '../../../../shared/resources/resources.dart';
import '../../../../shared/widgets/widgets.dart';

class BottomUnlockWidget extends StatefulWidget {
  const BottomUnlockWidget({Key? key}) : super(key: key);

  @override
  _BottomUnlockWidgetState createState() => _BottomUnlockWidgetState();
}

class _BottomUnlockWidgetState extends State<BottomUnlockWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: LinearGradientMaskWidget(
          colors: [
            AppColors.orangeGradient,
            AppColors.orangeDarkGradient,
          ],
          child: Icon(
            Icons.lock_outline,
            color: AppColors.white,
          ),
        ),
        label: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text(
            'DESBLOQUEAR SEU CARTÃO',
            style: AppTypography.grayDart16w500Museo,
          ),
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0.0),
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.transparent),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 12.0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(color: AppColors.orangeLight, width: 2),
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ),
      ),
    );
  }
}
