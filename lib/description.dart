import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model/product_model.dart';

class DescriptionScreen extends StatelessWidget {
  final ProductModel productModel;

  const DescriptionScreen({Key? key, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(productModel.avatar ?? ''),
                    fit: BoxFit.fitWidth,
                  )),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: const Offset(0, -4),
                        blurRadius: 8)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(productModel.name ?? '',
                              style: GoogleFonts.ptSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.favorite_border,
                              size: 35,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 30,
                      right: 30,
                    ),
                    child: Text(
                      productModel.description ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.ptSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Color(0xFFC62828),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '${productModel.priceFinalText.toString()}',
                            style: GoogleFonts.ptSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFC62828),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: GoogleFonts.ptSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 70,
                              child: Center(
                                child: Text(
                                  "1",
                                  style: GoogleFonts.ptSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFC62828),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: GoogleFonts.ptSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),

                    // child: Container(
                    //   padding: const EdgeInsets.all(5),
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFC62828),
                    //     borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: Text(
                    //     '${productModel.price.toString()} EGP',
                    //     style: GoogleFonts.ptSans(
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                  ),
                  // Expanded(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Container(
                  //         height: 40,
                  //         width: 40,
                  //         decoration: BoxDecoration(
                  //           color: Color(0xFFC62828),
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //         child: Center(
                  //           child: Text(
                  //             "-",
                  //             style: GoogleFonts.ptSans(
                  //               fontSize: 20,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 40,
                  //         width: 70,
                  //         child: Center(
                  //           child: Text(
                  //             "1",
                  //             style: GoogleFonts.ptSans(
                  //               fontSize: 20,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 40,
                  //         width: 40,
                  //         decoration: BoxDecoration(
                  //           color: Color(0xFFC62828),
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //         child: Center(
                  //           child: Text(
                  //             "+",
                  //             style: GoogleFonts.ptSans(
                  //               fontSize: 20,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
    // return Column(
    //   children: [
    //     SizedBox(
    //       width: double.infinity,
    //       child: AspectRatio(
    //         aspectRatio: 1,
    //         child: Image.network('https://cdn.webshopapp.com/shops/250788/files/339664175/rca-rca-rs32h2-eu-android-smart-led-tv.jpg'),
    //       ),
    //     ),
    //     Row(
    //       children: [
    //         Container(
    //           height: 250,
    //           width: 250,
    //           decoration: BoxDecoration(color: ),
    //         )
    //       ],
    //     )
    //   ],
    //
    // );
  }
}
