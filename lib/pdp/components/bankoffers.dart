import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/bottom_sheet_modal.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/store_pickup_bottomsheet.dart';
import 'container.dart';

class BankOffers extends StatefulWidget {
  const BankOffers({super.key});

  @override
  _BankOffersState createState() => _BankOffersState();
}

class _BankOffersState extends State<BankOffers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 32, 0, 10),
              child: Text(
                'Bank Offers',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: container(
              bankName: 'ICICI Bank',
              lp: 16,
              rp: 5,
              img: 'pdp_assets/images/icicilogo.jpg',
            )),
            Expanded(
                child: container(
                    bankName: 'HDFC',
                    lp: 5,
                    rp: 16,
                    img: 'pdp_assets/images/hdfclogo.jpg'))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text.rich(
              TextSpan(style: const TextStyle(fontSize: 16), children: [
            TextSpan(
                style: const TextStyle(decoration: TextDecoration.underline),
                text: "4 More",
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      constraints: BoxConstraints.loose(Size(
                          MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height * 0.75)),
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16.0),
                        ),
                      ),
                      context: context,
                      builder: (context) => buildSheet(),
                    );
                  }),
          ])),
        ),
        Row(
          children: [
            // container(rp: 20, lp: 20, img: 'images/fastDelivery.jpg')
            Expanded(
                child: Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(30, 30, 30, 1),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        child: InkWell(
                          child: Image.asset(
                            'pdp_assets/images/fast-delivery.png',
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                            child: Text(
                              'Free delivery!',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(50, 5, 0, 10),
                              child: Text.rich(
                                TextSpan(
                                    text: "det it by",
                                    style: TextStyle(fontSize: 16),
                                    children: [
                                      TextSpan(text: " wed, 24 Aug"),
                                    ]),
                              ))
                        ],
                      )
                    ]),
                    const Divider(
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Pick from store')),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                style: const TextStyle(
                                    decoration: TextDecoration.underline),
                                text: "View stores",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      constraints: BoxConstraints.loose(Size(
                                          MediaQuery.of(context).size.width,
                                          MediaQuery.of(context).size.height *
                                              0.75)),

                                      // enableDrag: true,
                                      //backgroundColor: Colors.transparent,
                                      shape: const RoundedRectangleBorder(
                                        // <-- SEE HERE
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(16.0),
                                        ),
                                      ),
                                      context: context,
                                      //ADD THE STORE BOTTOMSHEET
                                      builder: (context) => const StorePickup(),
                                    );
                                  }),
                          ])),
                        ),
                      ],
                    )
                  ]),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                child: TextButton(
                    style: ButtonStyle(
                        // padding: MaterialStateProperty.all<EdgeInsets>(
                        //     EdgeInsets.fromLTRB(50, 15, 50, 15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: const BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromRGBO(120, 65, 225, 1))))),
                    onPressed: () => null,
                    child: Text("buy now".toUpperCase(),
                        style: const TextStyle(fontSize: 14))),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 20), //all(20.0),
                child: TextButton(
                    style: ButtonStyle(
                        // padding: MaterialStateProperty.all<EdgeInsets>(
                        //     EdgeInsets.fromLTRB(50, 15, 50, 15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(120, 65, 225, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: const BorderSide(
                                        color:
                                            Color.fromRGBO(120, 65, 225, 1))))),
                    onPressed: () => null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.shopping_cart_outlined),
                        Text('Add to cart')
                      ],
                    )),
              ),
            ),
          ],
        )
      ],
    );
  }
}
