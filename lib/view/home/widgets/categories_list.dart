
import 'package:arganzwina/view/category/category_screen.dart';
import 'package:arganzwina/view/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:arganzwina/core/view_moel/all_categories_name_controller.dart';
import 'package:arganzwina/utils/style.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllCatController>(
        init: Get.put(AllCatController()),
        builder: (controller) {
          return controller.loading == true
              ? const LoaderWidget()
              : SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                  child: ListView.builder(
                      itemCount: controller.cats.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() =>
                                CategoryViewScreen(id: controller.cats[index].id,catName: controller.cats[index].name,));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 7,
                            ),
                            width: MediaQuery.of(context).size.width / 4,
                            //   height: MediaQuery.of(context).size.height / 50,
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? primaryColor
                                    : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              controller.cats[index].name,
                              style: TextStyle(
                                  color: index == 0 ? Colors.white : darkColor),
                            ),
                          ),
                        );
                      }),
                );
        });
  }
}
