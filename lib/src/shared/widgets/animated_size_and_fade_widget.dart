import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class AnimatedSizeAndFade extends StatefulWidget {
  static final _key = UniqueKey();
  final Widget? child;
  final TickerProvider? vsync;
  final Duration fadeDuration;
  final Duration sizeDuration;
  final Curve fadeInCurve;
  final Curve fadeOutCurve;
  final Curve sizeCurve;
  final Alignment alignment;
  final bool show;

  AnimatedSizeAndFade({
    Key? key,
    this.child,
    required this.show,
    this.vsync,
    this.fadeDuration = const Duration(milliseconds: 400),
    this.sizeDuration = const Duration(milliseconds: 500),
    this.fadeInCurve = Curves.linear,
    this.fadeOutCurve = Curves.linear,
    this.sizeCurve = Curves.easeInOut,
    this.alignment = Alignment.topCenter,
  }) : super(key: key);

  @override
  State createState() {
    return _AnimatedSizeAndFadeState();
  }
}

class _AnimatedSizeAndFadeState extends State<AnimatedSizeAndFade> {
  @override
  Widget build(BuildContext context) {
    var animatedSize = AnimatedSize(
      vsync: widget.vsync!,
      duration: widget.sizeDuration,
      curve: widget.sizeCurve,
      child: AnimatedSwitcher(
        child: widget.show
            ? widget.child
            : Container(
                key: AnimatedSizeAndFade._key,
                width: double.infinity,
                height: 0,
              ),
        duration: widget.fadeDuration,
        switchInCurve: widget.fadeInCurve,
        switchOutCurve: widget.fadeOutCurve,
      ),
    );

    return ClipRect(child: animatedSize);
  }
}
