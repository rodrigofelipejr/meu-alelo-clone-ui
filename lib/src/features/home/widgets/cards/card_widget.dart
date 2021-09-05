import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/helpers/helpers.dart';
import '../../../../shared/resources/resources.dart';
import '../../models/models.dart';
import 'lines_painter.dart';
import 'padlock_widget.dart';

class CardWidget extends StatelessWidget {
  final CardDataModel params;

  const CardWidget({Key? key, required this.params}) : super(key: key);

  double get width => 290.0;
  double get height => width * 0.63;

  bool get isTypePrimary => params.type == TypeCard.primary;
  String get balanceFormatted => params.balance >= 0.0 ? Formatters.formatMoney(params.balance) : 'R\$ --';
  Gradient get gradient => isTypePrimary ? AppGradients.gradientGreen : AppGradients.gradientLime;
  Color get color => isTypePrimary ? AppColors.white : AppColors.green;
  Color get colorLines => isTypePrimary ? AppColors.white : AppColors.green;
  Color get iconBackgroundColor => isTypePrimary ? AppColors.greenDarkGradient : AppColors.limeDarkGradient;

  Widget _buildIcon() {
    return isTypePrimary
        ? FaIcon(
            FontAwesomeIcons.shoppingCart,
            color: color,
            size: height * 0.08,
          )
        : FaIcon(
            FontAwesomeIcons.utensils,
            color: color,
            size: height * 0.10,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: AppShadows.shadowsCards,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: height * 0.215,
            child: CustomPaint(
              size: Size(width, (width * 0.138).toDouble()),
              painter: LinesPainter(color: colorLines),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.14,
                  child: Image.asset(AppImages.logoAlelo),
                ),
                SizedBox(height: height * 0.055),
                Text(
                  params.label,
                  style: AppTypography.green18w700Museo.copyWith(color: color),
                ),
                SizedBox(height: height * 0.1),
                Text(
                  '•••• •••• •••• ${params.lastNumbers}',
                  style: AppTypography.green12w300Museo.copyWith(color: color),
                ),
                SizedBox(height: height * 0.04),
                Text(
                  balanceFormatted,
                  style: AppTypography.green22w700Museo.copyWith(color: color),
                ),
              ],
            ),
          ),
          Positioned(
            left: width * 0.03,
            top: height * 0.18,
            child: Container(
              alignment: Alignment.center,
              color: iconBackgroundColor,
              height: height * 0.15,
              width: height * 0.15,
              child: _buildIcon(),
            ),
          ),
          if (params.blocked)
            Positioned(
              right: 0,
              top: height * 0.11,
              child: PadlockWidget(),
            ),
        ],
      ),
    );
  }
}
