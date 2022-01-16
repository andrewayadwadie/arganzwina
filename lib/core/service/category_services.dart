import 'dart:convert';
import 'dart:developer';

import 'package:arganzwina/model/single_category_model.dart';
import 'package:arganzwina/utils/constants.dart';
import 'package:http/http.dart' as http;

class CategoryServices {
  static Future<List<dynamic>> getProductByCatId(int id) async {
    String url = "$apiUrl/HomeApi/GetCategoryProducts/$id";
    http.Response res = await http.get(
      Uri.parse(url),
    );
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body)['products'];
      log("message$jsonData");
      List categories = jsonData.map((element) {
        return CatSingleProductById.fromJson(element);
      }).toList();

      return categories;
    }
    return [];
  }
}
