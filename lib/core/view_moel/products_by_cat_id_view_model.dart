import 'package:arganzwina/core/service/category_services.dart';
import 'package:get/get.dart';

class ProductsByCatId extends GetxController {
  List<dynamic> productsById = [].obs;
  RxBool loading = true.obs;

  List<dynamic> getProductData(int id) {
    if (loading.value == true) {
      CategoryServices.getProductByCatId(id).then((value) {
        productsById = value;
        loading.value = false;
      });

   //   log("caaatttttt : $productsById");
    }
    return productsById;
  }
}
