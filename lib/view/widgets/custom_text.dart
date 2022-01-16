import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;

  final Color color;

  final FontWeight fw;

  final int maxLine;
  final double height;

  const CustomText({
    Key? key,
    this.fw = FontWeight.normal,
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.maxLine = 2,
    this.height = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, height: height, fontSize: fontSize, fontWeight: fw),
      maxLines: maxLine,
    );
  }
}
