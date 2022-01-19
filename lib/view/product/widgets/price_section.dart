


import 'dart:convert';
import 'dart:developer';

import 'package:arganzwina/core/view_moel/cart_ciew_model.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProductPriceWidget extends StatelessWidget {
   ProductPriceWidget({ Key? key ,required this.price,required this.id,required this.quantity,required  this.name,required this.photoPath}) : super(key: key);
final double?  price ;
final int id;
final int quantity;
final String name;
final String photoPath;




  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.put(CartController(),permanent: true);
    return Container(
              width: double.infinity,
              padding:const EdgeInsets.symmetric(horizontal:25,),
              height: MediaQuery.of(context).size.height/10,
              decoration:const BoxDecoration(
                color: Colors.white
                // border: Border.all(width: 2,color: lightprimaryColor),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("price".tr,
                    style:const TextStyle(
                      color: greyColor,
                      fontSize: 13
                    ), 
                     
                    ),
                    Text('$price',
                    style:const  TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ), ),
                  ],
                )
                ,
                  GetBuilder<CartController>(
                    init: CartController(),
                   builder:(controllerr) => (
                     InkWell(
                      onTap: (){
              
                    
                        controller.postCartItem(id) == "done"?
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text('done')))
                        : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('decline')));
                        // controller.addSingleCart({
                        //   "id":id,
                        //   "name":name,
                        //   "price":price,
                        //   "quantity":quantity,
                        //   "photoPath":photoPath
                        // }
                        // );
                        // log("trwegsdf");
                        // log("${controller.cartsList.length}");
                        // log(controller.cartsList[0].name);
                     //   Get.to(()=>const CategoryViewScreen());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                           color: primaryColor,
                           borderRadius: BorderRadius.circular(5)
                        ),
                        width: MediaQuery.of(context).size.width/3.3,
                              height: MediaQuery.of(context).size.height/16,
                             
                              child: Text("Add To Cart ".tr,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight:FontWeight.bold,
                                fontSize: 15
                              ),),
                                    ),
                   )),
                  ),
               
                ],
              ),

            
         );
  }
}