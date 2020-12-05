import 'package:flutter/material.dart';

class MaterialActionItem {
  final String title;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  const MaterialActionItem({
    @required this.title,
    this.onPressed,
    this.textStyle,
  }) : assert(title != null);
}
