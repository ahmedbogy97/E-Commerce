import 'dart:convert';
import 'package:amit/Category.dart';
import 'package:amit/model/product_model.dart';
import '../model/category_model.dart';
import 'package:http/http.dart' as http;

class ProductApi {

  static Future<List<ProductModel>> getProduct() async{
    var uri = Uri.http('retail.amit-learning.com', '/api/products', {});

    final response = await http.get(uri);

    Map data = jsonDecode(response.body);
    List<ProductModel> _list = [];
    data['products'].forEach((object) => _list.add(ProductModel.fromJson(object)));
    return _list;
  }
}
