

import 'package:arganzwina/core/view_moel/products_by_cat_id_view_model.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/category/widgets/category_cart_widget.dart';
import 'package:arganzwina/view/product/product_screen.dart';
import 'package:arganzwina/view/widgets/custom_loader.dart';
import 'package:arganzwina/view/widgets/custom_no_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryViewScreen extends StatelessWidget {
  const CategoryViewScreen({ Key? key,required this.id,required this.catName }) : super(key: key);
 final int id;
 final String catName ;
  @override
  Widget build(BuildContext context) {
       final ProductsByCatId controller = Get.put(ProductsByCatId(id: id));
     //  final List<dynamic>li = controller.productsById;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: GetBuilder<ProductsByCatId>(builder: (controler){
          return 
           controller.loading == true
               ? const LoaderWidget():
          SingleChildScrollView(

            child: 
          Column(
            children: [
              // ============= title =======================
              Container(
                color: Colors.white,
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
            
            
            controller.productsById.isEmpty?
          const  NoDataWidget():
            Container(
                height: MediaQuery.of(context).size.height/1.2,
                decoration:const BoxDecoration(
            //   border: Border.all(width: 2,color: Colors.red)
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
                    
                   //   log("teeeest ${li[1].photoPath}");
                      return
                      
                      
                       InkWell(
                         onTap: ()=>Get.to(
                           ProductViewScreen(id:controller.productsById[index]. id,
                          name: controller.productsById[index].name,
                           description: controller.productsById[index].description,
                            photoPath: controller.productsById[index].photoPath,
                             price: controller.productsById[index].hasOffer==false? 
                          controller.productsById[index].price:
                           controller.productsById[index].priceAfterOffer,
                             hasOffer: controller.productsById[index].hasOffer,
                            quantity: controller.productsById[index].quantity,
                             priceAfterOffer: controller.productsById[index].priceAfterOffer)
                         ),
                         child: CategoryCartWidget(
                          photoPath:controller.productsById[index].photoPath,
                          name: controller.productsById[index].name,
                          description: controller.productsById[index].description,
                          price: 
                           controller.productsById[index].hasOffer==false? 
                          controller.productsById[index].price:
                           controller.productsById[index].priceAfterOffer,
                                             ),
                       )
                      
                      ;
                    }),
              ),
            ],
                  ),
          ) ; 
        }) 
      
      ),
    );
  }
}