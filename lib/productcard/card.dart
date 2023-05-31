import 'package:flutter/material.dart';

import '../pdp/pdppage.dart';
import 'empty.dart';

class CardWidget extends StatefulWidget {
  final bool DealOfTheDay;
  final bool ProductAvailable;
  const CardWidget(
      {Key? key, required this.DealOfTheDay, required this.ProductAvailable})
      : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PDP()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: const Color(0xFF1E1E1E),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProductVisual(widget: widget),
                  ProductDetails(widget: widget, widget2: widget),
                ],
              ),
              widget.ProductAvailable ? const NeuCoinCount() : const Empty(),
            ],
          ),
        ),
      ),
    );
  }
}

class NeuCoinCount extends StatelessWidget {
  const NeuCoinCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      color: const Color(
        0xFF171717,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Get upto',
                      style: TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontFamily: "Proxima-Nova-A",
                          fontSize: 14),
                    ),
                    TextSpan(
                      text: ' 300',
                      style: TextStyle(
                          color: Color(0xFFFFC239),
                          fontFamily: "Proxima-Nova-A"),
                    ),
                    TextSpan(
                      text: ' NeuCoins',
                      style: TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontFamily: "Proxima-Nova-A"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          Flexible(
            flex: 5,
            child: Row(
              children: const [
                Text(
                  'Sign up  ',
                  style: TextStyle(color: Color(0xFFCB92FF), fontSize: 14),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFCB92FF),
                  size: 14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.widget,
    required this.widget2,
  }) : super(key: key);

  final CardWidget widget;
  final CardWidget widget2;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Vivo X70 Pro+ 5G (256GB ROM, 12GB RAM, V211...",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFFCCCCCC),
                height: 1.2,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: [
                  StarIcon(Icons.star, 0xFFFFC239),
                  StarIcon(Icons.star, 0xFFFFC239),
                  StarIcon(Icons.star, 0xFFFFC239),
                  StarIcon(Icons.star, 0xFFFFC239),
                  StarIcon(Icons.star_border_outlined, 0xFFFFFFFF),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            widget.ProductAvailable
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "₹ 1,65,990",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            '₹ 1,65,990',
                            style: TextStyle(
                                color: Color(0xFFCCCCCC),
                                fontSize: 14,
                                decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "15% off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          0.0,
                          8.0,
                          0.0,
                          8.0,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.local_shipping_outlined,
                              color: Color(0xFFCCCCCC),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "Wed, Feb30",
                              style: TextStyle(color: Colors.white),
                            ),
                            widget.DealOfTheDay
                                ? Row(
                                    children: [
                                      const SizedBox(
                                        width: 44,
                                      ),
                                      Image.asset(
                                        "images/house.png",
                                      ),
                                      const Text(
                                        " Pickup",
                                        style: TextStyle(
                                            color: Color(0xFFCB92FF),
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                : const Empty(),
                          ],
                        ),
                      )
                    ],
                  )
                : const Text(
                    'Product is not available',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFF75F5F),
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget StarIcon(IconData icon, int col) {
    return Icon(
      icon,
      color: Color(col),
      size: 20,
    );
  }
}

class ProductVisual extends StatelessWidget {
  const ProductVisual({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final CardWidget widget;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              8,
              0,
              16,
              2,
            ),
            child: Card(
              child: Container(
                height: 104,
                width: 104,
                color: Colors.white,
                child: Image.asset(
                  "images/mobile.png",
                ),
              ),
            ),
          ),
          widget.DealOfTheDay
              ? ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                    height: 24,
                    width: 116,
                    decoration: const BoxDecoration(color: Color(0xFFFFB1C7)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      child: Text(
                        "Deal of the day",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xFF66002E),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              : const Empty(),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
