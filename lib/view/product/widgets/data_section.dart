import 'package:arganzwina/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductDataWidget extends StatelessWidget {
  const ProductDataWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/1.7,
                decoration:const BoxDecoration(
                  // border: Border.all(width: 2,color: lightprimaryColor),

                ),
                child: ListView(
                  children: [

                    //================= Product Title ========================
             const Text("Product Title",
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),
                    
                    ),
                    // ============== Quantity & offers  ===============
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //===== quantity ========
                        Container(
                          width: MediaQuery.of(context).size.width/2.5,
                          height: MediaQuery.of(context).size.height/20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color: primaryColor),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${'quantity'.tr} : ",
                              style:const TextStyle(
                                color: blackColor,
                                fontSize: 15
                              ),
                              
                              ),
                              const Text("25 " ,
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                        //====== offer =========
                         Container(
                           width: MediaQuery.of(context).size.width/2.5,
                          height: MediaQuery.of(context).size.height/20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color: primaryColor),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${'offer'.tr} : " ,
                              style:const TextStyle(
                                color: blackColor,
                                fontSize: 15
                              ),
                              
                              ),
                           const  Icon(Icons.done_sharp,
                             color: Colors.green,
                             size: 30,
                             )
                            ],
                          ),
                        ),
                      ],
                    )
                  //=============== Details =====================
                ,   Text("Details".tr,
                    style:const TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),
                    
                    ),
                    /// =============== Description =============
                  Container(
                        margin: const EdgeInsets.only(top: 5,bottom: 5,right: 15,left: 15),
                   //     height: MediaQuery.of(context).size.height,
                        child: const Text(
                          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id risus luctus, feugiat dui non, auctor orci. Fusce in ante at turpis rutrum dapibus. Nulla facilisi. Nullam efficitur turpis neque, quis ullamcorper ligula porttitor rutrum. Suspendisse rutrum lectus id luctus ornare. Sed nec venenatis est. Proin in nulla mattis, varius lacus at, maximus enim. Maecenas felis metus, cursus non urna in, euismod ornare risus. Curabitur mattis, massa eget pulvinar sollicitudin, ligula eros accumsan massa, ac varius neque leo a orci. Curabitur vel dui nec nunc vestibulum condimentum. Vestibulum ut est nec odio mattis placerat eu sed turpis. Aliquam sed consequat dolor, egestas tempus lectus.",
                          maxLines: 11,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              height: 1.8,
                              color: blackColor,
                              fontSize: 15,
                              fontFamily: 'hanimation',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ;
  }
}