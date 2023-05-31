import 'package:flutter/material.dart';

class IntConstant {
  static int constant0 = 0;
  static int constant1 = 1;
  static int constant5 = 5;
  static int constant120 = 120;
}

class DoubleConstant {
  static double constant0 = 0.0;
  static double constant1 = 1.0;
  static double constant2 = 2.0;
  static double constant5 = 5.0;
  static double constant8 = 8.0;
  static double constant10 = 10.0;
  static double constant12 = 12.0;
  static double constant14 = 14.0;
  static double constant15 = 15.0;
  static double constant16 = 16.0;
  static double constant18 = 18.0;
  static double constant20 = 20.0;
  static double constant22 = 22.0;
  static double constant30 = 30.0;
  static double constant32 = 32.0;
  static double constant56 = 56.0;
  static double constant100 = 100.0;
  static double constant120 = 120.0;
  static double constant136 = 136.55;
  static double constant154 = 154.0;
  static double constant266 = 266.0;
}

class StringConstant {
  static String endScreenSpace = "End Screen Space";
  static String backToTop = "Back to Top";
  static String filterByPrice = "Filter by Price";
  static String filterByBrand = "Filter by Brand";
  static String seeAllFilters = "See all filters";
  static String apply = "Apply";
  static String similarProducts = "Similar Products";
  static String productName_1 = 'Fire TV Stick Lite';
  static String productName_2 = 'ViewSonic inch QHD Resolution';
  static String image_1 = "image 42";
  static String image_2 = "image 49";
  static String discountPrice = "discount_price";
  static String originalPrice = "original price";
}

const styleEndScreenSpace = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

final List imageName = ['Home', 'Category', 'Neu', 'Cart', 'Menu'];

const List brands = [
  "Apple",
  "Vivo",
  "Samsung",
  "Oneplus",
  "Realme",
  "Gionee",
  "Motorola"
];

const List priceRange = [
  '10,000 - 35,000',
  '35,000 - 45,000',
  '45,000 - 65,000',
  '65,000 - 85,000',
  '85,000 - 1,00,000',
];

const styleBackToTop = TextStyle(
  color: Color(0xff000000),
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
);

const stylefilterByPrice = TextStyle(
  color: Color(0xffFFFFFF),
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const styleChip = TextStyle(
    fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF));

const styleSeeAllFilters = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffCB92FF));

const styleApply =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);

const styleNavBar = TextStyle(
  color: Color(0xffA1A1A1),
);

const styleSimilarProducts = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const styleProductText = TextStyle(
    color: Color(0xffCCCCCC), fontWeight: FontWeight.w400, fontSize: 16.0);

class ImageConstant {
  static String imageStar = "assets/similar_products/star_filled.png";
}
