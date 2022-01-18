import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/category/widgets/category_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryViewScreen extends StatelessWidget {
  const CategoryViewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                   const Text("category Name",
                   style: TextStyle(
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
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return const CategoryCartWidget();
                  }),
            ),
          ],
        ) 
      
      ),
    );
  }
}