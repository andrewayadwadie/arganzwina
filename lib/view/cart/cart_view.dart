import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/cart/widgets/cart_list_widget.dart';
import 'package:arganzwina/view/cart/widgets/checkout_widget.dart';
import 'package:arganzwina/view/category/category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:get/get.dart';

class CartViewScreen extends StatelessWidget {
  const CartViewScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child:Column(
        children: const<Widget>[
          // ========== all carts ==========
          CartListWidget(),
          // ============== total Price ================
          CheckoutWidget()
       
        ]
      )),
    );
  }

}
