import 'dart:convert';
import 'package:amit/Category.dart';
import '../model/category_model.dart';
import 'package:http/http.dart' as http;

class CategoryApi {

  static Future<List<CategoryModel>> getCategory() async{
    var uri = Uri.http('retail.amit-learning.com', '/api/categories', {});

    final response = await http.get(uri);

    Map data = jsonDecode(response.body);
    List<CategoryModel> _list = [];
    data['categories'].forEach((object) => _list.add(CategoryModel.fromJson(object)));
    return _list;
  }
}
