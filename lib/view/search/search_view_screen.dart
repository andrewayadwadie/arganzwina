import 'package:arganzwina/core/view_moel/search_view_model.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/category/widgets/category_cart_widget.dart';
import 'package:arganzwina/view/product/product_screen.dart';
import 'package:arganzwina/view/widgets/custom_loader.dart';
import 'package:arganzwina/view/widgets/custom_no_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchViewScreen extends StatelessWidget {
 const  SearchViewScreen({
    Key? key,
    required this.word,
    required this.catName,
  }) : super(key: key);
final String word;
 final String catName ;
  @override
  Widget build(BuildContext context) {
    final SearchController controller = Get.put( SearchController(word: word));
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Obx(
          ()=>  controller.loading == true
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
            
            
            controller.searchData.isEmpty?
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
                    itemCount:controller.searchData.length,
                    itemBuilder: (BuildContext context, index) {  
                      return 
                      InkWell(
                         onTap: ()=>Get.to(
                           ProductViewScreen(
                          id: controller.searchData[index].id,
                          name: controller.searchData[index].name,
                           description: controller.searchData[index].description,
                            photoPath: controller.searchData[index].photoPath,
                             price: controller.searchData[index].hasOffer==false? 
                          controller.searchData[index].price:
                           controller.searchData[index].priceAfterOffer,
                             hasOffer: controller.searchData[index].hasOffer,
                            quantity: controller.searchData[index].quantity,
                             priceAfterOffer: controller.searchData[index].priceAfterOffer)
                         ),
                    child:  CategoryCartWidget(
                        photoPath:controller.searchData[index].photoPath,
                        name: controller.searchData[index].name,
                        description: controller.searchData[index].description,
                        price: 
                         controller.searchData[index].hasOffer==false? 
                        controller.searchData[index].price:
                         controller.searchData[index].priceAfterOffer,
                      ))
                      
                      ;
                    }),
              ),
            ],
                  ),
          )
        ),
      ),
    );
  }
}
