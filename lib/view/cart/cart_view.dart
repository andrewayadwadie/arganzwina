import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/cart/widgets/cart_list_widget.dart';
import 'package:arganzwina/view/cart/widgets/checkout_widget.dart';
import 'package:flutter/material.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:get/get.dart';


class CartViewScreen extends StatelessWidget {
  const CartViewScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ExpandableBottomSheet(
            persistentHeader:const CheckoutWidget(),  
            background: 
            // ============== total Price ================
              CartListWidget(),
            // ========== all carts ==========
            expandableContent:
             Container(
              height: MediaQuery.of(context).size.height/2,
              color: Colors.white,
              child: 
             ListView(
               children: <Widget> [
                 Center(
                   child: Text("hint : ".tr+"This total price doesn't include delivery costs".tr,
                   style:const TextStyle(
                     color:redColor,
                     fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                   ListTile(
                     title: Text(
                       "Total price doesn't include tax".tr,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     trailing:const Text('775',
                     style: TextStyle(
                       fontSize: 15,
                       color: primaryColor
                     ),
                     ),
                   ),
                   ListTile(
                     title: Text(
                       "Taxable total price".tr,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     trailing:const Text('775',
                     style: TextStyle(
                       fontSize: 15,
                       color: primaryColor
                     ),
                     ),
                   ),
                      ListTile(
                     title: Text(
                       "Tax value".tr,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     trailing:const Text('775',
                     style: TextStyle(
                       fontSize: 15,
                       color: primaryColor
                     ),
                     ),
                   ),
                      ListTile(
                     title: Text(
                       "Total price inclusive tax value".tr,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     trailing:const Text('775',
                     style: TextStyle(
                       fontSize: 15,
                       color: primaryColor
                     ),
                     ),
                   ),
                      ListTile(
                     title: Text(
                       "Total price summation".tr,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     trailing:const Text('775',
                     style: TextStyle(
                       fontSize: 15,
                       color: primaryColor
                     ),
                     ),
                   ),
                      ListTile(
                     title: Text(
                      "This total price doesn't include delivery costs".tr,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     trailing:const Text('775',
                     style: TextStyle(
                       fontSize: 15,
                       color: primaryColor
                     ),
                     ),
                   ),
               ],
             ),
                  ),

        )),
    );
  }

  
  

}
