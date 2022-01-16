import 'package:get/get.dart';

class NavigationBarViewModel extends GetxController {
  int navigatorVal = 0;

  get navigatorValue => navigatorVal;

  void changeSelectedValue(int selectedValue) {
    navigatorVal = selectedValue;
    update();
  }
}
