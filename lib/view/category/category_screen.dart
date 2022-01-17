import 'package:arganzwina/utils/style.dart';
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
                    return  Container(
              
              decoration: BoxDecoration(
             
                borderRadius: BorderRadius.circular(6)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
        
                      image:const  DecorationImage(
                        image: NetworkImage('https://arganzwina.com/files/photos/d47dd8c8-4461-434a-a552-824862e8a84b_download.jpg',),
                        fit: BoxFit.fitHeight
                      )
                    ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/3.7,    

                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                     
                    
                    ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/10,    
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      //====================== product Title ====================
                       Text("Product Title ",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                            
                      ),
                      Text(
                          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id risus luctus, feugiat dui non, auctor orci.",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              height: 1.2,
                              color: greyColor,
                              fontSize: 12,
                              fontFamily: 'hanimation',
                              fontWeight: FontWeight.normal),
                        ),
                         Text("775",
                            style: TextStyle(
                              
                              color: primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            
                      ),
                    ],
                  ),
                  ),

                ],
              ),
                    );
                  }),
            ),
          ],
        ) 
      
      ),
    );
  }
}