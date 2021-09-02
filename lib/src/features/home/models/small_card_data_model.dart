import 'package:flutter/material.dart';

class SmallCardDataModel {
  final Color background;
  final String label;
  final Color labelColor;
  final Color? backgroundTag;
  final Color? labelColorTag;
  final Widget? illustration;

  SmallCardDataModel({
    required this.background,
    required this.label,
    required this.labelColor,
    this.backgroundTag,
    this.labelColorTag,
    this.illustration,
  });
}
