import 'package:arganzwina/view/cart/widgets/cart_list_widget.dart';
import 'package:arganzwina/view/cart/widgets/checkout_widget.dart';
import 'package:flutter/material.dart';


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
