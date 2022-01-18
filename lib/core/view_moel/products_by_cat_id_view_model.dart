
import 'package:arganzwina/core/service/category_services.dart';
import 'package:get/get.dart';

class ProductsByCatId extends GetxController {
  final int? id;
  ProductsByCatId({  this.id});
  List<dynamic> productsById = [].obs;
 final  RxBool  _loading = true.obs;

 @override
  void onInit() {
  
  getProductData(id!);
    super.onInit();
   
  }

 bool get loading => _loading.value;
  List<dynamic> getProductData(int id) {
   
    if(_loading.value==true){
       CategoryServices.getProductByCatId(id).then((value) {
        productsById = value;
      //  log ("api res ${value}");
        _loading.value = false;
        update();
      
      }
      
      );
    }
     

   //   log("caaatttttt : $productsById");
   
    return productsById;
  }




}
