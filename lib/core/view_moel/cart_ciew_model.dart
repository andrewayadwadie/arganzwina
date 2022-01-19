
import 'package:arganzwina/core/service/cart_services.dart';
import 'package:get/get.dart';


class CartController extends GetxController{
   String  res = "";
//   bool  _loading = true;

//  @override
//   void onInit() {
//   postCartItem(id!);
//     super.onInit();
//   }
 //bool get loading => _loading;
 
  String postCartItem(int id) {
  //if(_loading==true){
       CartServices.postAddCartItem(id).then((value) {
        res = value;
  //_loading = false;
        update();
        });
    //  }
      
   //   );
     // }
    return res;
  }


}