import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  final Color cardColor;
  final bool isSelect;
  final String colourName;
  final bool isColourCard;
  const CustomCards({
    Key? key,
    required this.cardColor,
    required this.colourName,
    required this.isSelect,
    required this.isColourCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isColourCard
        ? Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: isSelect
                    ? Color(0xff9E6BFE)
                    : colourName == "Slate Green"
                    ? Colors.grey.shade800
                    : Color(0xffcccccc)),
            color: cardColor),
        height: 130,
        width: 84,
      ),
      Positioned(
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            border: Border.all(
              color: isSelect
                  ? Color(0xff9E6BFE)
                  : colourName == "Slate Green"
                  ? Colors.grey.shade800
                  : Color(0xffcccccc),
            ),
            color: Color(0xff171717),
          ),
          height: 62,
          width: 84,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(colourName,
                style: TextStyle(
                  fontSize: 20,
                  color: colourName == "Slate Green"
                      ? Colors.grey.shade800
                      : Color(0xffcccccc),
                )),
          ),
        ),
      ),
    ])
        : Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelect
              ? Color(0xff9E6BFE)
              : colourName == "1TB" || colourName == "8GB"
              ? Colors.grey.shade800
              : Color(0xffcccccc),
        ),
        color: Color(0xff171717),
      ),
      height: 32,
      width: 84,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            colourName,
            style: TextStyle(
                fontSize: 20,
                color: colourName == "1TB" || colourName == "8GB"
                    ? Colors.grey.shade800
                    : Color(0xffcccccc)),
          ),
        ),
      ),
    );
  }
}
