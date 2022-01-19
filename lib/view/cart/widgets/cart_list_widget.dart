import 'package:arganzwina/core/view_moel/cart_ciew_model.dart';

import 'package:arganzwina/utils/local_storage/local_storage.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartListWidget extends StatelessWidget {
   CartListWidget({ Key? key }) : super(key: key);

 final localStorage = LocaleStorage();
final CartController gtController = Get.put(CartController(),permanent: true);
int count =0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder:(controller) => Container(
    
              height: MediaQuery.of(context).size.height/1.3,
              decoration:const BoxDecoration(
              
              //  border: Border.all(width: 2,color: blackColor)
              ),child: ListView.builder(
                /* ===================================================================================== */
                 /* ===================================================================================== */
                  /* ===================================================================================== */
                   /* ===================================================================================== */
                itemCount: localStorage.cartList.length,
                /* ===================================================================================== */
                 /* ===================================================================================== */
                  /* ===================================================================================== */
                   /* ===================================================================================== */
                itemBuilder: (context,index){
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   height: MediaQuery.of(context).size.height/8,
              decoration: const BoxDecoration(
               // border: Border.all(width: 2,color: greyColor)
              ),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: MediaQuery.of(context).size.width/3.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://arganzwina.com/files/photos/${localStorage.cartList[index].photoPath}'),fit: BoxFit.fitWidth
                      ),
                // border: Border.all(width: 2,color: redColor), 
                borderRadius: BorderRadius.circular(6)
                )
                   ),
                    Container(
                     width: MediaQuery.of(context).size.width/1.8,
                    decoration: BoxDecoration(
                    // border: Border.all(width: 2,color: redColor), 
                    borderRadius: BorderRadius.circular(6)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(localStorage.cartList[index].name,
                        style:const TextStyle(
                          color:blackColor,
                          fontSize: 14
                        ),
                        ),
                        Text("${localStorage.cartList[index].price}",
                        style:const TextStyle(
                          color:primaryColor,
                          fontSize: 15
                        ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width/3.5,
                           height: MediaQuery.of(context).size.height/28,
                           decoration: BoxDecoration(
                             color: Colors.grey.shade300,
                             borderRadius: BorderRadius.circular(5),
                           ),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               InkWell(onTap: (){}, child:const Icon(Icons.add,color: blackColor,size: 20,)),
                               const Text("5"),
                               InkWell(onTap: (){}, child:const Icon(Icons.remove,color: blackColor,size: 20,)),
                             ],
                           ),
    
                        )
                      ],
                    ),
                   ),
                 ],
               )
                ) ;
              }),
            ),
    )
;
  }
}