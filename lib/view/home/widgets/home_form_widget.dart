import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';

class HomeFormWidget extends StatelessWidget {
  const HomeFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          border: InputBorder.none,
          suffixIcon: Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(12)),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
