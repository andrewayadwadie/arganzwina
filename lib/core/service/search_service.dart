import 'dart:convert';
import 'dart:developer';

import 'package:arganzwina/model/single_category_model.dart';
import 'package:arganzwina/utils/constants.dart';
import 'package:http/http.dart' as http;

class SearchServices {
  static Future<List<dynamic>> getSearchData(String searchWord) async {
    String url = "$apiUrl/HomeApi/Search/$searchWord";
   
    http.Response res = await http.get(
      Uri.parse(url),
    );
    log ("request res ${res.body}");
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      List categories = jsonData.map((element) {
        return SearchProductModel.fromJson(element);
      }).toList();

      return categories;
    }else if(res.statusCode == 404){
      return [];
    }
    return [];
  }
}
