import 'package:arganzwina/core/view_moel/app_lang_controller.dart';
import 'package:arganzwina/utils/style.dart';
import 'package:arganzwina/view/home/widgets/all_product_list_widget.dart';

import 'package:arganzwina/view/home/widgets/categories_list.dart';
import 'package:arganzwina/view/home/widgets/home_form_widget.dart';
import 'package:arganzwina/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewScreen extends StatelessWidget {
  const HomeViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: const EdgeInsets.only(top: 60, right: 15, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GetBuilder<AppLanguage>(
                  init: AppLanguage(),
                  builder: (controller) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// change localization
                        DropdownButton(
                          items: const [
                            DropdownMenuItem(
                              child: Text('en'),
                              value: 'en',
                            ),
                            DropdownMenuItem(
                              child: Text('ar'),
                              value: 'ar',
                            ),
                          ],
                          value: controller.appLocale,
                          onChanged: (String? val) {
                            controller.changeLanguage(val);
                            Get.updateLocale(Locale(val!));
                          },
                        ),

                        /// search in all products
                   const      HomeFormWidget(),

                        SizedBox(
                          height: MediaQuery.of(context).size.height / 19,
                        ),

                        /// title 1
                        CustomText(
                          text: "categories".tr,
                          fontSize: 18,
                          fw: FontWeight.bold,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 19,
                        ),

                        /// categories list
                      const   CategoriesListWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 19,
                        ),

                        /// title 2
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Best Selling'.tr,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 25,
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: primaryColor,
                                  ),
                                  child: Text(
                                    'See All'.tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 19,
                        ),

                        /// all product list
                        const AllProductListWidget()
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
