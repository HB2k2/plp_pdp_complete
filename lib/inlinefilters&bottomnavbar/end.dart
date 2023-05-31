import 'package:flutter/material.dart';
import 'package:flutter_application_2/topbanner/mergedcompnents.dart';

import 'package:flutter_application_2/constants/constants.dart';

class EndOfSpace extends StatelessWidget {
  const EndOfSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DoubleConstant.constant120,
      width: double.maxFinite,
      color: const Color(0xff2A2A2D),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: DoubleConstant.constant30,
                left: DoubleConstant.constant100,
                right: DoubleConstant.constant100),
            child: Row(
              children: [
                Text(
                  StringConstant.endScreenSpace,
                  style: styleEndScreenSpace,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: DoubleConstant.constant16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(DoubleConstant.constant32),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffCB92FF))),
                  onPressed: () {
                    scrollUp();
                  },
                  child: Row(
                    children: [
                      Text(StringConstant.backToTop, style: styleBackToTop),
                      SizedBox(
                        width: DoubleConstant.constant5,
                      ),
                      const Icon(
                        Icons.arrow_upward_outlined,
                        color: Color(0xff000000),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void scrollUp() {
    double start = DoubleConstant.constant0;
    controller.jumpTo(start);
  }
}
