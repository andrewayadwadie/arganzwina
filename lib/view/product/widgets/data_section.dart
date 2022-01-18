import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductDataWidget extends StatelessWidget {
  const ProductDataWidget({ Key? key,
  required this.quantity,
   this.hasOffer,
   required this.name, 
  required  this.description }) : super(key: key);
 final int quantity ; 
  final bool? hasOffer;

  final String name ;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/1.7,
                decoration:const BoxDecoration(
                  // border: Border.all(width: 2,color: lightprimaryColor),

                ),
                child: ListView(
                  children: [

                    //================= Product Title ========================
              Text(name,
                    style:const TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),
                    
                    ),
                    // ============== Quantity & offers  ===============
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //===== quantity ========
                        Container(
                          width: MediaQuery.of(context).size.width/2.5,
                          height: MediaQuery.of(context).size.height/20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color: primaryColor),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${'quantity'.tr} : ",
                              style:const TextStyle(
                                color: blackColor,
                                fontSize: 15
                              ),
                              
                              ),
                               Text("$quantity " ,
                              style:const TextStyle(
                                color: blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                        //====== offer =========
                         Container(
                           width: MediaQuery.of(context).size.width/2.5,
                          height: MediaQuery.of(context).size.height/20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color: primaryColor),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${'offer'.tr} : " ,
                              style:const TextStyle(
                                color: blackColor,
                                fontSize: 15
                              ),
                              
                              ),
                             Icon(
                             hasOffer==true?
                             Icons.done_sharp:
                             Icons.cancel_sharp,
                             color:
                              hasOffer==true?
                              Colors.green:
                              Colors.red,
                             size: 30,
                             )
                            ],
                          ),
                        ),
                      ],
                    )
                  //=============== Details =====================
                ,   Text("Details".tr,
                    style:const TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),
                    
                    ),
                    /// =============== Description =============
                  Container(
                    decoration: const BoxDecoration(
                  
                    ),
                        margin: const EdgeInsets.only(top: 5,bottom: 5,right: 15,left: 15),
                   //     height: MediaQuery.of(context).size.height,
                        child:  Text(
                         description,
                          overflow: TextOverflow.ellipsis,
                          style:const TextStyle(
                              height: 1.8,
                              color: blackColor,
                              fontSize: 15,
                              fontFamily: 'hanimation',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ;
  }
}