import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'more_options.dart';

class ModifiedFilter extends StatefulWidget {
  const ModifiedFilter({Key? key}) : super(key: key);

  @override
  State<ModifiedFilter> createState() => _ModifiedFilterState();
}

class _ModifiedFilterState extends State<ModifiedFilter> {

  int i=0;
  int _value=-1;
  int _value2=-1;
  int optionSelected=0;


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
              Padding(
              padding: EdgeInsets.only(left:DoubleConstant.constant12,top: DoubleConstant.constant16),
              child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(StringConstant.filterByPrice,style: stylefilterByPrice),
              ),
              ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Wrap(
    children: List<Widget>.generate(
        priceRange.length,
        (int index) {
      return Padding(
        padding: EdgeInsets.only(left:DoubleConstant.constant8,right: DoubleConstant.constant8),
        child: ChoiceChip(
          backgroundColor: const Color(0xff101114),
          side: const BorderSide(
            color: Color(0xff1E1E1E),
          ),
          label: Padding(
            padding:  EdgeInsets.only(left:DoubleConstant.constant8,right:DoubleConstant.constant8),
            child: Text(priceRange[index],
            style: styleChip),
          ),
          selected: _value == index,
          selectedColor: const Color(0xff2B2B2B),
          onSelected: (bool selected) {
              setState(() {
                _value = (selected ? index : null)!;
                optionSelected++;
              });
          },
        ),
      );
    },
    ).toList(),

           ),
         ),

          Padding(
            padding: EdgeInsets.only(left:DoubleConstant.constant12,top: DoubleConstant.constant16),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(StringConstant.filterByBrand,style: stylefilterByPrice),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: List<Widget>.generate(
                brands.length,
                    (int index) {
                  return Padding(
                    padding: EdgeInsets.only(left:DoubleConstant.constant8,right: DoubleConstant.constant8),
                    child: ChoiceChip(
                      backgroundColor: const Color(0xff101114),
                      side: const BorderSide(
                        color: Color(0xff1E1E1E),
                      ),
                      label: Padding(
                        padding: EdgeInsets.only(left:DoubleConstant.constant8,right:DoubleConstant.constant8),
                        child: Text(brands[index],
                          style: styleChip),
                      ),
                      selected: _value2 == index,
                      selectedColor: const Color(0xff2B2B2B),
                      onSelected: (bool selected) {
                        setState(() {
                          _value2 = (selected ? index : null)!;
                          optionSelected++;
                        });
                      },
                    ),
                  );
                },
              ).toList(),

            ),
          ),
          Row(
            children: [
              optionSelected>0  ?const ShowApplyContainer():SizedBox(height:DoubleConstant.constant5,)
            ],
          )

        ],
    );
  }

}
