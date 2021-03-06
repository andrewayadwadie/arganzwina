//Colors
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

const Color primaryColor = Color(0xff218875);
const Color lightprimaryColor = Color(0xff71DFE7);
const Color secondarylightprimaryColor = Color(0xffC2FFF9);
const Color secondaryColor = Color(0xffFFE652);
const Color redColor = Color(0xffed2024);
const Color whiteColor = Color(0xFFFEFEFE);
const Color blackColor = Color(0xFF030303);
const Color darkColor = Color(0xff242937);
const Color greyColor = Color(0xff808080);

///
/// Text Style
///
const TextStyle btnTextStyle =
    TextStyle(fontFamily: fontFamily, fontSize: 16, color: whiteColor);
const TextStyle whiteTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: whiteColor);
const TextStyle blackTextStyle =
    TextStyle(fontFamily: fontFamily, fontSize: 17, color: blackColor);
InputDecoration textFormDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(10),
    focusColor: primaryColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: const BorderSide(
        color: primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    ),
    labelText: "رقم الهاتف",
    labelStyle: const TextStyle(color: primaryColor));

Map<int, Color> customColor = {
  50: const Color.fromRGBO(33, 136, 117, .1),
  100: const Color.fromRGBO(33, 136, 117, .2),
  200: const Color.fromRGBO(33, 136, 117, .3),
  300: const Color.fromRGBO(33, 136, 117, .4),
  400: const Color.fromRGBO(33, 136, 117, .5),
  500: const Color.fromRGBO(33, 136, 117, .6),
  600: const Color.fromRGBO(33, 136, 117, .7),
  700: const Color.fromRGBO(33, 136, 117, .8),
  800: const Color.fromRGBO(33, 136, 117, .9),
  900: const Color.fromRGBO(33, 136, 117, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF218875, customColor);
