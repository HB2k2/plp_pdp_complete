import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';

import 'bottom_sheet_modal.dart';

Widget learnMore() {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xff1E1E1E),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
    ),
    height: 500,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topBar(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    "assets/bottom_sheet_icons/icici.png",
                  ),
                ),
                SizedBox(
                  width: 12.0,
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
          ),
          const Padding(
            padding:
                EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
            child: Text(
              softWrap: true,
              "5% cashback on credit "
              "card EMI for cart value, "
              "consectetur adipiscing elit. Maecenas "
              "convallis lorem rutrum nisi dictum posuere. ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A1A1),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 8.0, left: 16.0, right: 16.0, bottom: 16.0),
            child: Text(
              "Title of the Section",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
          ),
          //SizedBox(height: 8.0,),
          const Padding(
            padding:
                EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. "
              "Maecenas convallis lorem rutrum nisi dictum posuere. ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A1A1),
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
            child: Text(
              "Title of the Section",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
          ),

          const Padding(
            padding:
                EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Maecenas convallis lorem rutrum nisi dictum posuere.Lorem ipsum dolor sit amet consectetur adipiscing elit. Maecenas convallis lorem rutrum nisi dictum posuere.Lorem ipsum dolor sit amet consectetur adipiscing elit. Maecenas convallis lorem rutrum nisi dictum posuere. Lorem ipsum dolor sit amet consectetur adipiscing elit. Maecenas convallis lorem rutrum nisi dictum posuere.Lorem ipsum dolor sit amet consectetur adipiscing elit. Maecenas convallis lorem rutrum nisi dictum p ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A1A1),
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    ),
  );
}
