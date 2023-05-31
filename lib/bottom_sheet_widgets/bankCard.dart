import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/constants.dart';
import 'learn_more.dart';

Widget bankCard({required BuildContext context}) {
  return Padding(
    padding:
        const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
    //padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xff1E1E1E),
        border: Border.all(color: const Color(0xff5D5D5D)),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 14,
                  backgroundImage:
                      AssetImage("assets/bottom_sheet_icons/icici.png"),
                ),
                // Image.asset("assets/bottom_sheet_icons/icici.png",scale: 10,)),
                // child: Image.asset("assets/bottom_sheet_icons/icici.png",scale: 10,)),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "ICICI Bank",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              softWrap: true,
              "5% cashback on credit card EMI for cart value above Rs. 10,000",
              style: styleBankOffer,
            ),
            const SizedBox(
              height: 8.0,
            ),
            InkWell(
              onTap: () => showModalBottomSheet(
                constraints: BoxConstraints.loose(Size(
                    MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.75)),

                enableDrag: true,
                //backgroundColor: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  // <-- SEE HERE
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.0),
                  ),
                ),
                context: context,

                builder: (context) => learnMore(),
              ),
              child: const Text(
                'Learn more',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
