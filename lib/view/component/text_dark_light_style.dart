import 'package:flutter/material.dart';

class TextCustom2 extends StatelessWidget {
  const TextCustom2({
    Key? key,
    required this.data,
    this.textStyle,
    this.textAlign,
  }) : super(key: key);

  final String data;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }
}
