import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;
  final TextDecoration? decoration;

  const TextCustom({
    super.key,
    required this.data,
    this.color,
    this.fontSize = 16,
    this.fontWeight,
    this.textAlign,
    this.letterSpacing = 1,
    this.height,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,
        decoration: decoration,
      ),
    );
  }
}
