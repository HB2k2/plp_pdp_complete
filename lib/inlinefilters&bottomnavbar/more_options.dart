import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/constants.dart';
import 'package:flutter_application_2/topbanner/mergedcompnents.dart';

class ShowApplyContainer extends StatefulWidget {
  const ShowApplyContainer({super.key});

  @override
  State<ShowApplyContainer> createState() => _ShowApplyContainerState();
}

class _ShowApplyContainerState extends State<ShowApplyContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
            left: DoubleConstant.constant15,
            right: DoubleConstant.constant15,
            top: DoubleConstant.constant10,
            bottom: DoubleConstant.constant15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: DoubleConstant.constant16),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff000000)),
                ),
                child: Text(StringConstant.seeAllFilters,
                    style: styleSeeAllFilters),
              ),
            ),
            SizedBox(width: DoubleConstant.constant100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  scrollUp();
                });
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(DoubleConstant.constant32),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff8241FF)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: DoubleConstant.constant16,
                    right: DoubleConstant.constant16),
                child: Text(
                  StringConstant.apply,
                  style: styleApply,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void scrollUp() {
    double start = DoubleConstant.constant0;
    controller.jumpTo(start);
  }
}
