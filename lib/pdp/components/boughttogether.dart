import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class BoughtTogether extends StatefulWidget {
  const BoughtTogether({super.key});

  @override
  State<BoughtTogether> createState() => _BoughtTogetherState();
}

class _BoughtTogetherState extends State<BoughtTogether> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromRGBO(30, 30, 30, 1),
        height: 900,
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Bought with this product',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SmallproductName(
                  leftPadding: 20,
                  rightPadding: 5,
                ),
                LargeProductName(
                  leftPadding: 5,
                  rightPadding: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                LargeProductName(
                  leftPadding: 20,
                  rightPadding: 5,
                ),
                SmallproductName(
                  leftPadding: 5,
                  rightPadding: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String title, Color backgroundcolor) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: 80,
        color: backgroundcolor,
        alignment: Alignment.center,
        child: Text(title, style: styleEndScreenSpace));
  }
}

class LargeProductName extends StatelessWidget {
  const LargeProductName({
    Key? key,
    required this.rightPadding,
    required this.leftPadding,
  }) : super(key: key);
  final double leftPadding; //5
  final double rightPadding; //20

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 10, rightPadding, 10),
          child: Container(
            color: Colors.white,
            height: 200,
            width: 180,
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(43, 45, 053, 1),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10))),
              height: 30,
              width: 70,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '60% off',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 5, rightPadding, 2.5),
          child: const Text(
            "Product name that is ",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 2.5, rightPadding, 2.5),
          child: const Text(
            "very, very long ...",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 2.5, rightPadding, 2.5),
          child: const Text(
            "₹21,999   ₹21,999",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 2.5, rightPadding, 2.5),
          child: const StarRating(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 2.5, rightPadding, 2.5),
          child: const Button(),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.fromLTRB(50, 5, 50, 5)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(30, 30, 30, 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                        color: Color.fromRGBO(120, 65, 225, 1))))),
        onPressed: () => null,
        child: const Text(
          'Add',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

class SmallproductName extends StatelessWidget {
  const SmallproductName({
    Key? key,
    required this.rightPadding,
    required this.leftPadding,
  }) : super(key: key);
  final double leftPadding; //20
  final double rightPadding; //5

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 10, rightPadding, 10),
          child: Container(
            color: Colors.white,
            height: 200,
            width: 180,
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(43, 45, 053, 1),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10))),
              height: 30,
              width: 70,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '60% off',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 5, 0, 2.5),
          child: const Text(
            "Short product name",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 5, 0, 2.5),
          child: const Text(
            "₹21,999   ₹21,999",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 5, 0, 2.5),
          child: const StarRating(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(leftPadding, 5, 0, 2.5),
          child: const Button(),
        ),
      ],
    );
  }
}

class StarRating extends StatelessWidget {
  const StarRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Color.fromRGBO(255, 194, 57, 1),
        ),
        Icon(
          Icons.star_border,
          size: 20,
        )
      ],
    );
  }
}
