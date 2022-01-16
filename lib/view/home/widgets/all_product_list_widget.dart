import 'package:arganzwina/utils/style.dart';
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
            return Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width / 2.4,
                //   height: MediaQuery.of(context).size.height / 50,
                decoration: BoxDecoration(
                    //    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
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
                      height: MediaQuery.of(context).size.height / 15,
                      child: const Text(
                        " Descrition DescritionDescrition Descrition Descrition Descrition Descrition DescritionDescrition Descrition Descrition Descrition",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            height: 1.1,
                            color: greyColor,
                            fontSize: 10,
                            fontFamily: 'hanimation',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "price after offer".tr,
                                style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              ),
                              const Text(
                                "665 L.E",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "price before offer".tr,
                                style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              ),
                              const Text(
                                "775 L.E",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
