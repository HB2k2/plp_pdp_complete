import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class container extends StatelessWidget {
  container(
      {required this.rp,
      required this.lp,
      required this.img,
      required this.bankName});
  double rp;
  double lp;
  String img;
  String bankName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(lp, 15, rp, 15),
      height: 200,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(30, 30, 30, 1),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: InkWell(
                  child: Image.asset(
                    img,
                    scale: 9,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  bankName,
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          text(commontext: '5% cashback on'),
          text(commontext: 'credit card EMI for'),
          text(commontext: 'cart value above Rs.'),
          text(commontext: '10,000.'),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child:
                Text.rich(TextSpan(style: TextStyle(fontSize: 14), children: [
              TextSpan(
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                  text: "learn More",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      print('hello');
                    }),
            ])),
          ),
        ],
      ),
    );
  }
}

class text extends StatelessWidget {
  text({super.key, required this.commontext});
  String commontext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
      child: Text(
        commontext,
        style: const TextStyle(
            fontSize: 14, color: Color.fromRGBO(161, 161, 161, 1)),
      ),
    );
  }
}
