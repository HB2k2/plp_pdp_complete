import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';

class ExchangeJourneyFinal extends StatelessWidget {
  const ExchangeJourneyFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          topBar(),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: overAllPadding16,
              child: Text(
                'Exchange your device',
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: headingSize,
                ),
              ),
            ),
          ),
          Padding(
            padding: imagePadding,
            child: Image.asset(
              'assets/bottom_sheet_icons/planet_earth.jpeg',
            ),
          ),
          Column(
            children: [
              text(
                textContent: 'Exchange value for your',
              ),
              const SizeBox(),
              text(
                textContent: 'Apple iPhone 13 Max 3GB / 32 GB',
              )
            ],
          ),
          const Padding(
            padding: overAllPadding16,
            child: Text(
              'IMEI No. 87593849748395923',
              style: TextStyle(
                  fontSize: imeiTextSize,
                  color: imeiColor,
                  fontFamily: fontFamily),
            ),
          ),
          const Padding(
            padding: overAllPadding16,
            child: Text(
              '₹2,030',
              style: TextStyle(
                  fontSize: headingSize,
                  color: primaryColor,
                  fontFamily: fontFamily),
            ),
          ),
          Padding(
            padding: linkPadding,
            child: Text.rich(TextSpan(
                style: const TextStyle(
                    fontSize: linkTextSize, fontFamily: fontFamily),
                children: [
                  TextSpan(
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      text: "Terms & conditions",
                      recognizer: TapGestureRecognizer()..onTap = () async {}),
                ])),
          ),
          Padding(
            padding: rightPadding,
            child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: buttonColor)))),
                // ignore: avoid_returning_null_for_void
                onPressed: () => Navigator.pop(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizeBox(),
                    Text(
                      'Agree & continue',
                      style:
                          TextStyle(fontSize: textSize, fontFamily: fontFamily),
                    ),
                    SizeBox()
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class SizeBox extends StatelessWidget {
  const SizeBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 8,
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class text extends StatelessWidget {
  text({Key? key, required this.textContent}) : super(key: key);
  String textContent;

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: const TextStyle(
          color: secondaryColor, fontSize: textSize, fontFamily: fontFamily),
    );
  }
}

const overAllPadding16 = EdgeInsets.all(16);
const rightPadding = EdgeInsets.symmetric(horizontal: 16);
const imagePadding = EdgeInsets.fromLTRB(0, 40, 0, 24);
const linkPadding = EdgeInsets.fromLTRB(0, 40, 0, 24);

const double headingSize = 24;
const double textSize = 16;
const double imeiTextSize = 14;
const double linkTextSize = 14;

const primaryColor = Color(0xFFFFFFFF);
const secondaryColor = Color(0xFFCCCCCC);
const imeiColor = Color(0xFFA1A1A1);
const buttonColor = Color(0xFF8241FF);

const fontFamily = 'Proxima Nova A';
