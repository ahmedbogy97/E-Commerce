import 'package:amit/model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'res/color.dart';

class CategoryCardWidget extends StatelessWidget {
  // final CategoryModel categoryModel ;
  // const CategoryCard( {Key? key ,required this.categoryModel}) : super(key: key);

  // void getCategory()  async{
  //   var response = await Dio().get('http://amit-retail.amit-learning.com/api/categories');
  //   print(response.data);
  // }
  final CategoryModel categoryModel;

  const CategoryCardWidget({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getCategory();
    return Container(
      // height: 150,

      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.grey,
          border: Border.all(color: Colors.grey),
          image: DecorationImage(

              image: NetworkImage(categoryModel.image ?? ''),
              fit: BoxFit.cover)),
      child: Container(
        height: 40,
        color: highLiteColor,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          categoryModel.name ?? '',
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
