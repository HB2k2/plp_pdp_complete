import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';
import 'package:flutter_application_2/exchange_journey_bottomsheet/exchange_1.dart';

import 'package:flutter_application_2/pdp/pdp_merged_components/constants.dart';
//import 'package:flutter_application_2/pdp/constants/constants.dart';

import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'colourcard.dart';

class BeforeBankOffers extends StatelessWidget {
  const BeforeBankOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showVarSel() {
      showModalBottomSheet<void>(
        backgroundColor: Color(0xff1e1e1e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.87,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  topBar(),
                  // SizedBox(
                  //   height: 32,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Vivo X70 Pro+ 5G (256GB ROM, 12GB RAM, V2114, Blue Haze)",
                      style: TextStyle(fontSize: 16, color: Color(0xFFCCCCCC)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "₹79,990",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 7,
                    endIndent: 7,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Colour",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffa1a1a1),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                          cardColor: Color(0xff79A8C2),
                          colourName: "Blue Haze",
                          isSelect: true,
                          isColourCard: true,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                          isSelect: false,
                          cardColor: Color(0xffb8bbbd),
                          colourName: "Enigma Grey",
                          isColourCard: true,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                          isSelect: false,
                          cardColor: Color(0xff336c5f),
                          colourName: "Slate Green",
                          isColourCard: true,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                          isSelect: false,
                          cardColor: Color(0xff891d16),
                          colourName: "Ruby Red",
                          isColourCard: true,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                          isSelect: false,
                          cardColor: Colors.indigo.shade800,
                          colourName: "Indigo Blue",
                          isColourCard: true,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Storage",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffa1a1a1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CustomCards(
                            cardColor: Color(0xff171717),
                            colourName: "128GB",
                            isSelect: true,
                            isColourCard: false),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                            cardColor: Color(0xff171717),
                            colourName: "256GB",
                            isSelect: false,
                            isColourCard: false),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                            cardColor: Color(0xff171717),
                            colourName: "1TB",
                            isSelect: false,
                            isColourCard: false),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "RAM",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffa1a1a1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CustomCards(
                            cardColor: Color(0xff171717),
                            colourName: "6GB",
                            isSelect: true,
                            isColourCard: false),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                            cardColor: Color(0xff171717),
                            colourName: "8GB",
                            isSelect: false,
                            isColourCard: false),
                        SizedBox(
                          width: 9,
                        ),
                        CustomCards(
                            cardColor: Color(0xff171717),
                            colourName: "12GB",
                            isSelect: false,
                            isColourCard: false),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all(Size(370, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff8241FF)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          StringConstant.apply,
                          style: styleApply,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: showVarSel,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 76,
              width: 428,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color.fromRGBO(30, 30, 30, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Text(
                          'Colour',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(161, 161, 161, 1)),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Blue H..',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(204, 204, 204, 1)),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   child: Divider(
                  //     color: Colors.red,
                  //     height: 5,
                  //     thickness: 10,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(161, 161, 161, 1)),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '256 GB',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(204, 204, 204, 1)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Text(
                          'Memory',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(161, 161, 161, 1)),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '12 GB',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(204, 204, 204, 1)),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Spacing.spacing16,
            vertical: Spacing.spacing16,
          ),
          child: Text(
            'Vivo X70 Pro+ 5G (256GB ROM, 12GB RAM, V2114, Blue Haze)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Proxima Nova A',
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 28,
            width: 140,
            color: const Color.fromRGBO(30, 30, 30, 1),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  '4.5 | 152 reviews',
                  style: TextStyle(
                    fontFamily: 'Proxima Nova A',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(204, 204, 204, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    '₹79,990',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: RichText(
                      text: const TextSpan(
                        text: '₹84,990  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            //decoration: TextDecoration.lineThrough,
                            color: Color.fromRGBO(161, 161, 161, 1)),
                        children: <TextSpan>[
                          TextSpan(
                              text: '(6% off)',
                              style: TextStyle(
                                  color: Color.fromRGBO(124, 253, 134, 1))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 36,
              height: 20,
              //color: const Color.fromRGBO(36, 160, 144, 1),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(36, 160, 144, 1)),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  color: const Color.fromRGBO(36, 160, 144, 1)),
              child: const Text(
                'OR',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  Text(
                    '₹1,009/m',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'View EMI Plans',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(161, 161, 161, 1)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            alignment: Alignment.center,
            child: Container(
              height: 56,
              width: 424,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Color.fromRGBO(130, 65, 255, 0.5),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 21),
                    child: Image.asset(
                      'pdp_assets/images/neu_logo.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: RichText(
                      text: const TextSpan(
                        text: 'You can earn upto ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            //decoration: TextDecoration.lineThrough,
                            color: Color.fromRGBO(204, 204, 204, 1)),
                        children: <TextSpan>[
                          TextSpan(
                              text: '3000 ',
                              style: TextStyle(
                                  color: Color.fromRGBO(241, 153, 55, 1))),
                          TextSpan(
                              text: 'Neucoins!',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 80,
            width: 424,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color.fromRGBO(219, 219, 219, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'pdp_assets/images/planet-earth.png',
                    height: 48,
                    width: 48,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Save upto ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'Proxima Nova A',

                            //height: 24,
                            //decoration: TextDecoration.lineThrough,
                            color: Color.fromRGBO(30, 30, 30, 1)),
                        children: <TextSpan>[
                          TextSpan(
                              text: '₹6,000',
                              style: TextStyle(
                                  color: Color.fromRGBO(30, 30, 30, 1),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Proxima Nova A'))
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          constraints: BoxConstraints.loose(Size(
                              MediaQuery.of(context).size.width,
                              MediaQuery.of(context).size.height * 0.75)),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16.0),
                            ),
                          ),
                          context: context,
                          //ADD THE EXCHANGE - 1 BOTTOMSHEET
                          builder: (context) => const ExchangeJourneyFirst(),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14, top: 8),
                        child: Text(
                          'Exchange your old device',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff5D5D5D)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
