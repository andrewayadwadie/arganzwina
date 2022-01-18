import 'dart:developer';

import 'package:arganzwina/core/view_moel/products_by_cat_id_view_model.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/category/widgets/category_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryViewScreen extends StatelessWidget {
  const CategoryViewScreen({ Key? key,required this.id,required this.catName }) : super(key: key);
 final int id;
 final String catName ;
  @override
  Widget build(BuildContext context) {
       final ProductsByCatId controller = Get.put(ProductsByCatId(id: id));
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<ProductsByCatId>(builder: (controler){
          return 
           controller.loading == true
               ? const Center(child:  CircularProgressIndicator()):
          Column(
          children: [
            // ============= title =======================
            SizedBox(
              height: MediaQuery.of(context).size.height/12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                 
                  IconButton(icon:const Icon(Icons.arrow_back_ios,color: blackColor,),onPressed: ()=>Get.back()),
                  const Spacer(),
                    Text(catName,
                   style:const TextStyle(
                     fontSize: 16
                   ),
                   ),
                   const Spacer()
                ],
              ),
            ),
            // ============= Category GridView =================
          
          
            Container(
              height: MediaQuery.of(context).size.height/1.2,
              decoration:const BoxDecoration(
             
              ),
              margin:const EdgeInsets.symmetric(vertical:10,horizontal: 15),
              padding:const  EdgeInsets.only(top: 15),
              child: GridView.builder(
                  padding:const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  shrinkWrap: true,
                  physics:const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount:controller.productsById.length,
                  itemBuilder: (BuildContext context, index) {
                    List<dynamic> li = controller.productsById;
                    log(" ${li[1].photoPath}");
                    return
                    
                    
                    const CategoryCartWidget(
                      photoPath:'af970cae-8a59-4e02-8437-84780d7b915a_الغاسول-المغربي.jpg',
                      name: "pro name ",
                      description: "prfdgodfnhk dhkdrtjgh dtrh ",
                      price: 36.0,
                    )
                    
                    ;
                  }),
            ),
          ],
        ) ; 
        }) 
      
      ),
    );
  }
}