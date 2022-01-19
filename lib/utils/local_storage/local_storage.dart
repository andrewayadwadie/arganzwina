import 'package:arganzwina/model/single_cart_item_model.dart';
import 'package:get_storage/get_storage.dart';

class LocaleStorage {
  /// write
  void saveLangToDisk(String lang) async {
    await GetStorage().write('lang', lang);
  }

  /// read
  Future<String> get langSelected async {
    return await GetStorage().read('lang');
  }
/////////////////////////////////////////////////////////////////////////////////////////////
 /// write
  void saveCartListToDisk(List<SingleCartItemModel> cartList)  {
     GetStorage().write('cartList', cartList);
  }

  /// read
  List<SingleCartItemModel> get cartList  {
     if(GetStorage().read('cartList')!= null)
      {
        return  GetStorage().read('cartList');
      }
      return [];
     
  }


}
