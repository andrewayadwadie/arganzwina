import 'package:arganzwina/core/view_moel/products_by_cat_id_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  TestScreen({Key? key, required this.id}) : super(key: key);
  final int id;
  final ProductsByCatId controller = Get.put(ProductsByCatId());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => Center(
            child: controller.loading.value == true
                ? const CircularProgressIndicator()
                : Text('${controller.getProductData(id).length}'))));
  }
}
