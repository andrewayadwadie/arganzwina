import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllProductListWidget extends StatelessWidget {
  const AllProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // decoration:
      //     BoxDecoration(border: Border.all(width: 2, color: Colors.red)),
      height: MediaQuery.of(context).size.height / 2.6,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Get.to(()=>const ProductViewScreen());
              },
              child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 10,
                  ),
                  width: MediaQuery.of(context).size.width / 2.4,
                  //   height: MediaQuery.of(context).size.height / 50,
                  decoration: BoxDecoration(
                      //    color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://arganzwina.com/files/photos/134b38c0-e3f8-40e1-9a60-ecfcd47219a4_ماسك-الطين-المغربي-اي-هيرب.jpg',
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        height: MediaQuery.of(context).size.height / 5.5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "product Name",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'hanimation',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: MediaQuery.of(context).size.height / 14,
                        child: const Text(
                          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id risus luctus, feugiat dui non, auctor orci. Fusce in ante at turpis rutrum dapibus. Nulla facilisi. Nullam efficitur turpis neque, quis ullamcorper ligula porttitor rutrum. Suspendisse rutrum lectus id luctus ornare. Sed nec venenatis est. Proin in nulla mattis, varius lacus at, maximus enim. Maecenas felis metus, cursus non urna in, euismod ornare risus. Curabitur mattis, massa eget pulvinar sollicitudin, ligula eros accumsan massa, ac varius neque leo a orci. Curabitur vel dui nec nunc vestibulum condimentum. Vestibulum ut est nec odio mattis placerat eu sed turpis. Aliquam sed consequat dolor, egestas tempus lectus.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              height: 1.1,
                              color: greyColor,
                              fontSize: 12,
                              fontFamily: 'hanimation',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Container(
                        decoration:const BoxDecoration(
                         //border: Border.all(width: 1,color: Colors.green)
                        ),
                        height: MediaQuery.of(context).size.height / 23,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                            Text(
                             "665 L.E",
                             style: TextStyle(
                                 color: primaryColor,
                                 fontSize: 19,
                                 fontWeight: FontWeight.bold),
                                ),
                             Text(
                              "775 L.E",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: secondaryColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
