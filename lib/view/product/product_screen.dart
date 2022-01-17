
import 'package:arganzwina/view/product/widgets/data_section.dart';
import 'package:arganzwina/view/product/widgets/picture_section.dart';
import 'package:arganzwina/view/product/widgets/price_section.dart';
import 'package:flutter/material.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const

         [
           //========================== Picture Section ===========================
           ProductPictureWidget(),
           // ========================= Product Data Section ===========================
           ProductDataWidget(),
           // ======================== price& add to cart section  =====================
           ProductPriceWidget()
          ],
        )
      
      ),
    );
  }
}