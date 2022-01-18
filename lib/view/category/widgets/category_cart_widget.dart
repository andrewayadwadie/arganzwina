import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';

class CategoryCartWidget extends StatelessWidget {
  const CategoryCartWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}