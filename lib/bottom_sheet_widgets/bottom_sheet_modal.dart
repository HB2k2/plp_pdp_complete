import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';
import 'package:flutter_application_2/constants/constants.dart';

import 'bankCard.dart';

Widget buildSheet() {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      color: Color(0xff1E1E1E),
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topBar(),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
            child: Text(
              "Bank Offers",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return bankCard(context: context);
              },
            ),
          )
        ],
      ),
    ),
  );
}
