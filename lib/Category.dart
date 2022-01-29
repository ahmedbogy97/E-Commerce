import 'package:amit/category_card_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'model/category_model.dart';
import 'package:amit/api/category.api.dart';

class CategoryScreen extends StatefulWidget {
  //all widget functions will be create
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();

// State<Category> createState() => _CategoryState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // List<CategoryModel>? categoryList;
  late List<CategoryModel>? _categoryList;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getCategory(false);
  }

  Future<void> getCategory(bool reload) async {
    _isLoading = true;
    if (reload) {
      setState(() {});
    }

    _categoryList = await CategoryApi.getCategory();
    setState(() {
      _isLoading = false;
    });
  }

  // late Future<List> category;
  // Future<List> getCategory() async {
  //   var response = await Dio().get('http://amit-retail.amit-learning.com/api/categories');
  //   return response.data;
  // setState(() {
  //   category = response.data;
  // });

  // @override
  // void initState() { //everything gonna be run
  //   category = getCategory();
  //   print(category);
  //   super.initState();
  // }
  // getData() async {
  //   if(categoryList != null){
  //     setState(() {
  //       categoryList= null ;
  //     });
  //   }
  //
  //   await Future.delayed(const Duration(seconds: 1));
  //   categoryList = [
  //     CategoryModel(1, 'Fashion',
  //         'https://3z6mv8219w2s2w196j1dkzga-wpengine.netdna-ssl.com/wp-content/uploads/2020/07/clothing.jpg'),
  //     CategoryModel(2, 'Electronics',
  //         'https://ecommerce.ccc2020.fr/wp-content/uploads/2020/10/electronic-gadgets.jpeg'),
  //     CategoryModel(2, 'Phones',
  //         'https://www.cnet.com/a/img/iJxo9AIxiXHqVoqm6nGISKtKwPI=/2020/08/18/b7168aea-9f7e-47bb-9f31-4cb8ad92fbc7/lg-note-20-ultra-5g-iphone-11-se-google-pixel-4a-lg-velvet-6133.jpg'),
  //     CategoryModel(2, 'Pc',
  //         'https://m.media-amazon.com/images/I/819XYUimTuL.jpg'),
  //     CategoryModel(2, 'Market',
  //         'https://a.cdn-hotels.com/gdcs/production9/d114/4cdc90ef-91ee-4fb8-8aed-6b77a0c97e30.jpg'),
  //     CategoryModel(2, 'Beauty',
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB_qO7wODxQun6p3dGMm_QKK38_Byepai9TQ&usqp=CAU'),
  //     CategoryModel(2, 'Tools',
  //         'https://media.istockphoto.com/photos/full-frame-shot-of-various-hand-tools-arranged-on-wood-picture-id614836688?k=20&m=614836688&s=170667a&w=0&h=NFP0aE4dD1CmoNo-ees3Ah5__EwEDGB5Z7BoI0uNp7U='),
  //   ];
  //   setState(() {});
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 200,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [
    //       Container(
    //         child: Column(
    //           children: [
    //             Icon(Icons.book),
    //             Text("Book")
    //           ],
    //         ),
    //       ),
    //       Container(
    //         child: Column(
    //           children: [
    //             Icon(Icons.book),
    //             Text("Book")
    //           ],
    //         ),
    //       ),
    //       Container(
    //         child: Column(
    //           children: [
    //             Icon(Icons.book),
    //             Text("Book")
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
    // print(category);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('E-com'),
      // ),
      //   drawer: Drawer(),
      //   appBar: AppBar(
      //     title: Text('E-com'),
      //   ),
      //   body: ListView(
      //     children: [
      //       Text('Categories', style: TextStyle(fontSize: 40),),
      //       Category(),
      //       Text('Products', style: TextStyle(fontSize: 40),),
      //       //AllProducts(),
      //
      //     ],
      //   ),
      // );
      body: SafeArea(
        // child: _isLoading
        //     ? const Center(child: CircularProgressIndicator())
        //     : ListView.builder(
        //         itemCount: _categoryList.length,
        //         itemBuilder: (context, index) {
        //           return CategoryCardWidget(
        //             categoryModel: _categoryList[index],
        //           );
        //         },
        //       )

        child: RefreshIndicator(
            onRefresh: () async {
              getCategory(true);
            },
            backgroundColor: Theme.of(context).cardColor,
            color: Colors.red,
            child: _isLoading
                ? const Center(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Column(
                    children: [
                      GridView.builder(
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: _categoryList?.length ?? 0,
                        // physics: FixedExtentScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          mainAxisSpacing: 20,
                          childAspectRatio: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 150,
                        ),
                        itemBuilder: (context, index) {
                          return CategoryCardWidget(
                            categoryModel: _categoryList![index],
                          );
                        },
                      )
                    ],
                  )),
      ),
    );
  }
}
