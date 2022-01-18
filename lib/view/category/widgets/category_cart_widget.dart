import 'package:arganzwina/utils/constants.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';

class CategoryCartWidget extends StatelessWidget {
  const CategoryCartWidget({ Key? key,
  required this.photoPath,
  required this.description,
  required this.name,
  required this.price }) 
  : super(key: key);
  final String? photoPath;
  final String? description ;
  final String? name;
  final double? price ;

  @override
  Widget build(BuildContext context) {
    return  Container(
              
              decoration: BoxDecoration(
       //        border: Border.all(width: 2,color: Colors.red),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
        //  border: Border.all(width: 2,color: Colors.green),
                      image:  DecorationImage(
                        image: NetworkImage("$imageUrl${photoPath!}",),
                        fit: BoxFit.fitHeight
                      )
                    ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/3.1,    

                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    //   border: Border.all(width: 2,color: Colors.yellow)
                    
                    ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/9.7,    
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //====================== product Title ====================
                       Text(name!,
                            style:const TextStyle(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                            
                      ),
                      Text(
                          description!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:const TextStyle(
                              height: 1.2,
                              color: greyColor,
                              fontSize: 12,
                              fontFamily: 'hanimation',
                              fontWeight: FontWeight.normal),
                        ),
                         Text("${price!}",
                            style: const TextStyle(
                              
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
  }
}