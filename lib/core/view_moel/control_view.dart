import 'package:arganzwina/view/cart/cart_view.dart';
import 'package:arganzwina/view/home/home_view_screen.dart';
import 'package:arganzwina/view/profile/profile_viewd.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget currentScreen = const HomeViewScreen();

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = const HomeViewScreen();
          break;
        }
      case 1:
        {
          currentScreen = const CartViewScreen();
          break;
        }
      case 2:
        {
          currentScreen = const ProfileViewScreen();
          break;
        }
    }
    update();
  }
}
