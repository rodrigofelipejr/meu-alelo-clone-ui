import 'package:flutter/material.dart';

class OptionModel {
  final String label;
  final IconData faIcon;
  final void Function()? onTap;

  OptionModel({
    required this.label,
    required this.faIcon,
    this.onTap,
  });
}
