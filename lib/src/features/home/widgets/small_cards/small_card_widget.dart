import 'package:flutter/material.dart';

import '../../../../shared/resources/resources.dart';
import '../widget.dart';

class SmallCardWidget extends StatelessWidget {
  final Color background;
  final String label;
  final Color labelColor;
  final Color? backgroundTag;
  final Color? labelColorTag;
  final Widget? illustration;

  const SmallCardWidget({
    Key? key,
    required this.background,
    required this.label,
    required this.labelColor,
    this.backgroundTag,
    this.labelColorTag,
    this.illustration,
  }) : //assert(backgroundTag != null && labelColorTag != null, 'error ++++++++++++++++'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double widthTag = constraints.maxWidth * 0.5;

        return Container(
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.centerRight,
                          height: constraints.maxHeight,
                          width: constraints.maxWidth * 0.4,
                          child: illustration,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          label,
                          style: AppTypography.green16w700Museo.copyWith(
                            height: 0.98,
                            color: labelColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (backgroundTag != null)
                Positioned(
                  top: -1.0,
                  left: -1.0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        size: Size(widthTag, (widthTag * 0.526829268292683).toDouble()),
                        painter: NewPainter(color: backgroundTag!),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0, right: 2.0),
                        child: Text(
                          'NOVO',
                          style: AppTypography.white12w700Museo.copyWith(
                            color: labelColorTag!,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
