import 'package:arganzwina/core/view_moel/control_view.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends StatelessWidget {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
        init: ControlViewModel(),
        builder: (controller) {
          return BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedItemColor: blackColor,
            backgroundColor: Colors.grey.shade50,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  // ignore: deprecated_member_use
                  title: const Text('Home'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text("home".tr),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      'assets/icons/home.png',
                      fit: BoxFit.contain,
                      width: 20,
                    ),
                  )),
              BottomNavigationBarItem(
                  // ignore: deprecated_member_use
                  title: const Text('Cart'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text("cart".tr),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      'assets/icons/cart.png',
                      fit: BoxFit.contain,
                      width: 20,
                    ),
                  )),
              BottomNavigationBarItem(
                  // ignore: deprecated_member_use
                  title: const Text('profile'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text("profile".tr),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      'assets/icons/user.png',
                      fit: BoxFit.contain,
                      width: 20,
                    ),
                  )),
            ],
            currentIndex: controller.navigatorValue,
            onTap: (index) {
              controller.changeSelectedValue(index);
            },
          );
        });
  }
}
