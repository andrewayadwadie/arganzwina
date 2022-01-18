
import 'package:arganzwina/view/product/widgets/data_section.dart';
import 'package:arganzwina/view/product/widgets/picture_section.dart';
import 'package:arganzwina/view/product/widgets/price_section.dart';
import 'package:flutter/material.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({ Key? key,
  required this.id,
  required this.name,
  required this.description,
  required this.photoPath,
  required this.price,
  required this.hasOffer,
  required this.quantity,
  required this.priceAfterOffer
  
   }) : super(key: key);
  final int id ;
  final int quantity ; 
  final bool? hasOffer;
  final double  price ;
  final String name ;
  final String description;
  final String photoPath;
  final double? priceAfterOffer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SizedBox(
       height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
        
           [
             //========================== Picture Section ===========================
             ProductPictureWidget(photoPath: photoPath,),
             // ========================= Product Data Section ===========================
             ProductDataWidget(quantity: quantity,hasOffer: hasOffer,name: name,description: description,),
             // ======================== price& add to cart section  =====================
             ProductPriceWidget(
               id: id,
               price: hasOffer==true?
                      priceAfterOffer:
                      price
               ,
             )
            ],
          ),
        )
      
      ),
    );
  }
}