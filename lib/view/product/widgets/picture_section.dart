import 'package:arganzwina/utils/constants.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPictureWidget extends StatelessWidget {
  const ProductPictureWidget({ Key? key,required this.photoPath }) : super(key: key);
final String photoPath;
  @override
  Widget build(BuildContext context) {
    return  Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                // border: Border.all(width: 2,color: lightprimaryColor),
                image: DecorationImage(
                  image: NetworkImage('$imageUrl$photoPath',),fit: BoxFit.fitWidth
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