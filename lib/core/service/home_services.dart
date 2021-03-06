import 'dart:convert';
import 'dart:developer';

import 'package:arganzwina/utils/constants.dart';
import 'package:http/http.dart' as http;

import 'package:arganzwina/model/category_model.dart';

class HomeServices {
  static Future<List<dynamic>> getAllCategoryName() async {
    String url = "$apiUrl/HomeApi/GetCategories";
    http.Response res = await http.get(
      Uri.parse(url),
    );
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      log("message${res.body}");
      List<dynamic> categories = jsonData.map((element) {
        return CategoryModel.fromJson(element);
      }).toList();

      return categories;
    }
    return [];
  }
}
