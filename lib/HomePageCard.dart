import 'package:amit/model/product_model.dart';
import 'package:flutter/material.dart';

import 'description.dart';

class HomePageCard extends StatelessWidget {
  final ProductModel productModel;

  const HomePageCard({Key? key, required this.productModel}) : super(key: key);

  void getHomePage() async {
    // var response = await Dio().get('http://amit-retail.amit-learning.com/api/products');
    // print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    // getHomePage();
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DescriptionScreen(
                      productModel: productModel,
                    )));
      },
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: NetworkImage(productModel.avatar ?? ''),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    productModel.description ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.circular(5.0), //or 15.0
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                              // child: IconButton(
                              //   onPressed: () {},
                              //   icon: const Icon(Icons.add),
                              //   color: Colors.white,
                              //   alignment: Alignment.center,
                              //   padding: new EdgeInsets.all(0.0),
                              // ),
                              ),
                        ),
                        Container(
                          child: Text(
                            '${productModel.price.toString()} EGP',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
