
import 'package:arganzwina/core/service/search_service.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final String? word;
  SearchController({  this.word});
  List<dynamic> searchData = [].obs;
 final  RxBool  _loading = true.obs;

 @override
  void onInit() {
  getSearchData(word!);
    super.onInit();
  }
 bool get loading => _loading.value;
 
  List<dynamic> getSearchData(String word) {
    if(_loading.value==true){
       SearchServices.getSearchData(word).then((value) {
        searchData = value;
        _loading.value = false;
        update();
      }
      
      );}
    return searchData;
  }
}
