// import 'package:flutter/material.dart';
// import 'Category.dart';
// class HomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       drawer: Drawer(),
//       appBar: AppBar(
//         title: Text('E-com'),
//       ),
//       body: ListView(
//         children: [
//           Text('Categories', style: TextStyle(fontSize: 40),),
//           Category(),
//           Text('Products', style: TextStyle(fontSize: 40),),
//           //all products
//
//         ],
//       ),
//     );
//   }
// }
import 'package:amit/category_card_widget.dart';
import 'package:amit/HomePageCard.dart';
import 'package:amit/api/product.api.dart';
import 'package:flutter/material.dart';
import 'package:amit/BotNavBar.dart';
import 'model/category_model.dart';
import 'model/product_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _CategoryState();
}

class _CategoryState extends State<HomePage> {
  List<ProductModel>? productList;
  getData() async {
    if(productList != null){
      setState(() {
        productList= null ;
      });
    }

    productList = await ProductApi.getProduct();
    //
    // await Future.delayed(const Duration(seconds: 2));
    // productList = [
    //   ProductModel(1, 'nm T-Shirt','Green,T-Shirt',70,
    //       'https://cdn11.bigcommerce.com/s-405b0/images/stencil/590x590/products/71/18017/gildan-5000-tee-t-shirt.ca-antique-jade-dome__19096.1637746764.jpg?c=2'),
    //   ProductModel(2, 'Shoes','Grey,Shoes',30,
    //       'https://www.grandostore.com/pub/media/catalog/product/cache/4/image/700x560/e9c3970ab036de70892d86c6d221abfe/t/s/ts041-19-1.jpg'),
    //   ProductModel(3, 'Phone','Samsung Galaxy S21',150,
    //       'https://i.insider.com/60117b551d2df20018b71117?width=1136&format=jpeg'),
    //   ProductModel(4, 'TV','Samsung 52 inch',100,
    //       'https://images.samsung.com/is/image/samsung/levant-ar-fhd-t5300-ua43t5300auxtw-frontblack-229897491?720_576_PNG'),
    //   ProductModel(5, 'Gaming PC','Corsair RGP case',100,
    //       'https://ae01.alicdn.com/kf/HTB1w1qsdA9E3KVjSZFGq6A19XXa8/370-188-412-PC.jpg_Q90.jpg_.webp'),
    //   ProductModel(6, 'Total Tools','Tool set 120 pcs',100,
    //       'https://cdnprod.mafretailproxy.com/sys-master-root/h9e/h81/10785256669214/6925582186918_main_480Wx480H'),
    //   ProductModel(7, 'Sony Camera','H300 Camera',100,
    //       'https://www.sony-mea.com/image/a9bd3d4cc0dac35199d6d92078bfe331?fmt=pjpeg&bgcolor=FFFFFF&bgc=FFFFFF&wid=2515&hei=1320'),
    // ];
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    getData();
  }

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
          child: RefreshIndicator(
              onRefresh: () async {
                getData();
              },
              backgroundColor: Theme.of(context).cardColor,
              color: Colors.red,
              child: productList == null
                  ?const Center(
                child: Center(child:  CircularProgressIndicator()),
              )
                  :SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: productList!.length,
                      padding: const EdgeInsets.all(10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: (1 / 1.4),
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return HomePageCard(
                          productModel: productList![index],
                        );
                      },
                    )
                  ],
                ),
              )
          ),
        ),
      //
      // BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart_outlined),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.menu),
      //       label: 'Menu',
      //     ),
      //   ],
      // ),
    );
  }
}

