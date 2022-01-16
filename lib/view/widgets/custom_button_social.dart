// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function()? onPress;

  const CustomButtonSocial({
    Key? key,
    required this.text,
    required this.imageName,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.grey.shade50,
      ),
      child: FlatButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Image.asset(imageName),
            const SizedBox(
              width: 100,
            ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
