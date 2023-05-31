import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/constants.dart';

class ShowSimilarProducts extends StatefulWidget {
  const ShowSimilarProducts({Key? key}) : super(key: key);

  @override
  State<ShowSimilarProducts> createState() => _ShowSimilarProductsState();
}

class _ShowSimilarProductsState extends State<ShowSimilarProducts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(StringConstant.similarProducts, style: styleSimilarProducts),
          SizedBox(height: DoubleConstant.constant18),
          Row(
            children: [
              similarCard(
                productName: StringConstant.image_1,
                discountPrice: StringConstant.discountPrice,
                originalPrice: StringConstant.originalPrice,
                productText: StringConstant.productName_1,
              ),
              similarCard(
                productName: StringConstant.image_2,
                discountPrice: StringConstant.discountPrice,
                originalPrice: StringConstant.originalPrice,
                productText: StringConstant.productName_2,
              ),
              similarCard(
                productName: StringConstant.image_1,
                discountPrice: StringConstant.discountPrice,
                originalPrice: StringConstant.originalPrice,
                productText: StringConstant.productName_1,
              ),
              similarCard(
                productName: StringConstant.image_2,
                discountPrice: StringConstant.discountPrice,
                originalPrice: StringConstant.originalPrice,
                productText: StringConstant.productName_2,
              ),
              similarCard(
                productName: StringConstant.image_1,
                discountPrice: StringConstant.discountPrice,
                originalPrice: StringConstant.originalPrice,
                productText: StringConstant.productName_1,
              ),

              //Card
            ],
          ),
        ],
      ),
    );
  }

  ClipRRect similarCard({
    required productName,
    required String productText,
    required String discountPrice,
    required String originalPrice,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(DoubleConstant.constant16),
      child: SizedBox(
        width: DoubleConstant.constant154,
        height: DoubleConstant.constant266,
        child: Stack(
          children: [
            Card(
                color: const Color(0xff1E1E1E),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: DoubleConstant.constant136,
                            width: DoubleConstant.constant154,
                            color: Colors.white,
                            child: Image.asset(
                              "assets/similar_products/$productName.png",
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(DoubleConstant.constant8),
                      child: SizedBox(
                        width: DoubleConstant.constant154,
                        child: Text(productText, style: styleProductText),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(DoubleConstant.constant8),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                  "assets/similar_products/$discountPrice.png"),
                            ],
                          ),
                          SizedBox(
                            width: DoubleConstant.constant10,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                  "assets/similar_products/$originalPrice.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(DoubleConstant.constant8),
                      child: Row(
                        children: [
                          Image.asset(ImageConstant.imageStar),
                          SizedBox(width: DoubleConstant.constant5),
                          Image.asset(ImageConstant.imageStar),
                          SizedBox(width: DoubleConstant.constant5),
                          Image.asset(ImageConstant.imageStar),
                          SizedBox(width: DoubleConstant.constant5),
                          Image.asset(ImageConstant.imageStar),
                          SizedBox(width: DoubleConstant.constant5),
                          Image.asset(ImageConstant.imageStar),
                          SizedBox(width: DoubleConstant.constant5),
                        ],
                      ),
                    ),
                  ],
                ) //SizedBox
                ),
            Positioned(
              top: 2,
              left: 2,
              child: Image.asset('assets/similar_products/discount.png'),
            )
          ],
        ),
      ),
    );
  }
}
