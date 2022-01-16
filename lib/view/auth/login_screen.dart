import 'dart:developer';
import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/widgets/custom_buttom.dart';
import 'package:arganzwina/view/widgets/custom_button_social.dart';
import 'package:arganzwina/view/widgets/custom_text.dart';
import 'package:arganzwina/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 20,
            left: 20,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Welcome,",
                      fontSize: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const CustomText(
                        text: "Sign Up",
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomText(
                  text: 'Sign in to Continue',
                  fontSize: 14,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  mailType: true,
                  text: 'Email',
                  hint: 'example@gmail.com',
                  onSave: (value) {},
                  validator: (value) {
                    if (value == null) {
                      log("ERROR");
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  obscureText: true,
                  text: 'Password',
                  hint: '**********',
                  onSave: (value) {},
                  validator: (value) {
                    if (value == null) {
                      log('error');
                    }
                  },
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // const CustomText(
                //   text: 'Forgot Password?',
                //   fontSize: 14,
                //   alignment: Alignment.topRight,
                // ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  onPress: () {
                    _formKey.currentState!.save();

                    if (_formKey.currentState!.validate()) {}
                  },
                  text: 'SIGN IN',
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const CustomText(
                    text: '-OR-',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonSocial(
                  text: 'Sign In with Facebook',
                  onPress: () {},
                  imageName: 'assets/images/facebook.png',
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonSocial(
                  text: 'Sign In with Google',
                  onPress: () {},
                  imageName: 'assets/images/google.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
