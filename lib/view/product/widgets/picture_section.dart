import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPictureWidget extends StatelessWidget {
  const ProductPictureWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/4,
              decoration:const BoxDecoration(
                // border: Border.all(width: 2,color: lightprimaryColor),
                image: DecorationImage(
                  image: NetworkImage('https://arganzwina.com/files/photos/d47dd8c8-4461-434a-a552-824862e8a84b_download.jpg',),fit: BoxFit.fitWidth
                )
              ),
             child:Stack(
               children: [
                  Positioned(
                    top:MediaQuery.of(context).size.height/50,
                    right:MediaQuery.of(context).size.width/20,
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: MediaQuery.of(context).size.width/9,
                        height: MediaQuery.of(context).size.height/20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(80)
                        ),
                        child:const Icon(Icons.star_border,
                        color: blackColor,
                        size: 30,
                        )
                         ),
                    ),
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height/50,
                    left:MediaQuery.of(context).size.width/20,
                    child: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                      ),
                    ),
                  ),
               ],
             ) 
            )
          ;
  }
}