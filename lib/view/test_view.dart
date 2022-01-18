

import 'package:arganzwina/core/view_moel/products_by_cat_id_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
     final ProductsByCatId controller = Get.put(ProductsByCatId(id: id));
    return Scaffold(
        body:  GetBuilder<ProductsByCatId>(builder: (contoller){
         
          return Center(
            child: 
           controller.loading == true
               ? const CircularProgressIndicator()
               : Text('${controller.productsById.length}'),);
        },
        ),
        );
  }
}


