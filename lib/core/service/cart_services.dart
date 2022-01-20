import 'dart:convert';
import 'dart:developer';
import 'package:arganzwina/utils/constants.dart';
import 'package:http/http.dart' as http;
class CartServices{

  static Future<String> postAddCartItem(int productId) async {
    var url = "$apiUrl/ShoppingCartApi/AddToShoppingCart/$productId/1";
    try {
      var res = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          "Content-type": "application/json",
        //  "Content-Length":"0",
       //   "Host":"<calculated when request is sent>"
        });
     
         log(res.body);
        log("${res.statusCode}");

      if (res.statusCode == 200 ||
          res.statusCode == 201 ||
          res.statusCode == 202) {
          return "done";
      }else if(res.statusCode == 404){
        return "item can't added";
      }else{
         return "item can't added";
      }

    } catch (e) {
      throw "exception is : $e";
    }
  }

  /////////////////////////////////////////////////////////
  
  static Future<String> postRemoveCartItem(int productId) async {
    var url = "$apiUrl/ShoppingCartApi/RemoveFromCart/$productId";
    try {
      var res = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          "Content-type": "application/json",
           });
     

      if (res.statusCode == 200 ||
          res.statusCode == 201 ||
          res.statusCode == 202) {
        if (jsonDecode(res.body) != false) {
          var jsonData = jsonDecode(res.body);

          return "done";
        }

        return '';
      }else if(res.statusCode == 404){
        return "item can't removed";
      }else{
         return "item can't removed";
      }

    } catch (e) {
      throw "exception is : $e";
    }
  }

 //////////////////////////////////////////////////////////////

 static Future<String> postIncrementCartItem(int productId) async {
    var url = "$apiUrl/ShoppingCartApi/IncrementProductAmount/$productId";
    try {
      var res = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          "Content-type": "application/json",
         });
     

      if (res.statusCode == 200 ||
          res.statusCode == 201 ||
          res.statusCode == 202) {
        if (jsonDecode(res.body) != false) {
          var jsonData = jsonDecode(res.body);

          return "done";
        }

        return '';
      }else if(res.statusCode == 404){
        return "item can't increment";
      }else{
         return "item can't increment";
      }

    } catch (e) {
      throw "exception is : $e";
    }
  }

 //////////////////////////////////////////////////////////////
 static Future<String> postDecrementCartItem(int productId) async {
    var url = "$apiUrl/ShoppingCartApi/DecrementProductAmount/$productId";
    try {
      var res = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          "Content-type": "application/json",
       });
     

      if (res.statusCode == 200 ||
          res.statusCode == 201 ||
          res.statusCode == 202) {
        if (jsonDecode(res.body) != false) {
          var jsonData = jsonDecode(res.body);

          return "done";
        }

        return '';
      }else if(res.statusCode == 404){
        return "item can't decrement";
      }else{
         return "item can't decrement";
      }

    } catch (e) {
      throw "exception is : $e";
    }
  }


}