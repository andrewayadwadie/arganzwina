import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final bool mailType;
  final String hint;
  final bool obscureText;
  final Function(String?)? onSave;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    this.mailType = false,
    this.obscureText = false,
    required this.text,
    required this.hint,
    this.onSave,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 14,
          color: Colors.grey.shade900,
        ),
        TextFormField(
          keyboardType: mailType
              ? TextInputType.emailAddress
              : TextInputType.visiblePassword,
          obscureText: obscureText,
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white,
          ),
        )
      ],
    );
  }
}
