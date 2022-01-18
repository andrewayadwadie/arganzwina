import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/category/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding:const EdgeInsets.symmetric(horizontal: 25),
            height: MediaQuery.of(context).size.height/10,
           
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("TOTAL".tr,
                    style:const TextStyle(
                      color: greyColor,
                      fontSize: 13
                    ), 
                     
                    ),
                  const  Text('775',
                    style:  TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ), ),
                  ],
                )
                ,
                  InkWell(
                    onTap: (){
                      Get.to(()=>const CategoryViewScreen());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(      
                         color: primaryColor,
                         borderRadius: BorderRadius.circular(5)
                      ),
                      width: MediaQuery.of(context).size.width/3.3,
                            height: MediaQuery.of(context).size.height/16,
                           
                            child: Text("CHECKOUT".tr,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.bold,
                              fontSize: 15
                            ),),
                                  ),
                  ),
               
                ],
              ),
          )
       ;
  }
}