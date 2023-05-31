import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';

import 'exchange_2.dart';

class ExchangeJourneyFirst extends StatelessWidget {
  const ExchangeJourneyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
      child: Container(
        color: const Color(0xff1E1E1E),
        // width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                topBar(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Exchange your Device",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 70.0,
                  color: const Color(0xff1E1E1E),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA1A1A1),
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xff1E1E1E),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                              const BorderSide(color: Color(0xff5D5D5D)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Select your brand",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xffA1A1A1),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return cardArrangement(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        "Other brands",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xff5D5D5D),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        "Other brands",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0xff5D5D5D),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget popularBrandCard({required context}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: GestureDetector(
          onTap: () {
            //add exchange journey bottomsheet - 2

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
              builder: (context) => const ExchangeJourneySecond(),
            );
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const ExchangeJourneySecond()),
            // );
          },
          child: Container(
            height: 72,
            width: 156,
            color: const Color(0xff5D5D5D),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.circle,
                  size: 32,
                  color: Color(0xffD9D9D9),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text("Popular\nBrand"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardArrangement(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        popularBrandCard(context: context),
        popularBrandCard(context: context),
      ],
    );
  }
}
