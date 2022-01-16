import 'package:arganzwina/core/view_moel/all_categories_name_controller.dart';
import 'package:arganzwina/core/view_moel/control_view.dart';
import 'package:arganzwina/core/view_moel/products_by_cat_id_view_model.dart';

import '../core/view_moel/auth_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AuthViewModel());
    Get.put(() => ControlViewModel());
    Get.put(() => AllCatController());
    Get.put(() => ProductsByCatId());
  }
}
