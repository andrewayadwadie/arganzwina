// ignore_for_file: deprecated_member_use

import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function()? onPress;

  const CustomButton({
    Key? key,
    required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(20),
      onPressed: onPress,
      color: primaryColor,
      child: Container(
        alignment: Alignment.center,
        child: CustomText(
          text: text,
          color: Colors.white,
        ),
      ),
    );
  }
}
