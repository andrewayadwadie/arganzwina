import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

            height: MediaQuery.of(context).size.height/1.3,
            decoration:const BoxDecoration(
            //  border: Border.all(width: 2,color: blackColor)
            ),child: ListView.builder(
              itemCount: 10,
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
                    image:const DecorationImage(
                      image: NetworkImage('https://arganzwina.com/files/photos/134b38c0-e3f8-40e1-9a60-ecfcd47219a4_ماسك-الطين-المغربي-اي-هيرب.jpg'),fit: BoxFit.fitWidth
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
                  const    Text("Product Title Name",
                      style: TextStyle(
                        color:blackColor,
                        fontSize: 14
                      ),
                      ),
                  const    Text("775",
                      style: TextStyle(
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
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: blackColor,size: 20,)),
                             const Text("5"),
                             IconButton(onPressed: (){}, icon:const Icon(Icons.remove,color: blackColor,size: 20,)),
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
          )
;
  }
}