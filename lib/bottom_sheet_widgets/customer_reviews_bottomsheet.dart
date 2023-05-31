import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';

class CustomerReviews extends StatelessWidget {
  //const CustomerReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromRGBO(30, 30, 30, 1),
            child: Column(
              children: [
                topBar(),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Customer reviews',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: Color.fromRGBO(255, 194, 57, 1),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '4.2 / 5',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 200),
                        child: Text(
                          'Write a review',
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          '5 star',
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                        )),
                    SizedBox(
                      width: 290,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff24A090),
                        backgroundColor: Colors.grey,
                        lineHeight: 8,
                        percent: 0.8,
                      ),
                    ),
                    const Text(
                      '4000',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          '4 star',
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                        )),
                    SizedBox(
                      width: 290,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff24A090),
                        backgroundColor: Colors.grey,
                        lineHeight: 8,
                        percent: 0.6,
                      ),
                    ),
                    const Text(
                      '300',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          '3 star',
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                        )),
                    SizedBox(
                      width: 290,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff24A090),
                        backgroundColor: Colors.grey,
                        lineHeight: 8,
                        percent: 0.2,
                      ),
                    ),
                    const Text(
                      '10',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          '2 star',
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                        )),
                    SizedBox(
                      width: 290,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        progressColor: Colors.greenAccent,
                        backgroundColor: Colors.grey,
                        lineHeight: 8,
                        percent: 0,
                      ),
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          '1 star',
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          ),
                        )),
                    SizedBox(
                      width: 290,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        progressColor: Colors.greenAccent,
                        backgroundColor: Colors.grey,
                        lineHeight: 8,
                        percent: 0,
                      ),
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10.0,
                      ),
                      child: Text(
                        'All reviews',
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Container_HS(
                          width: 70,
                        ),
                        Container_HS(
                          width: 70,
                        ),
                        Container_HS(
                          width: 70,
                        ),
                        Container_HS(
                          width: 70,
                        ),
                        Container_HS(
                          width: 70,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/slidingsort.png',
                        //color: Color.fromRGBO(93, 93, 93, 1),
                        scale: 50,
                      ),
                      const RatingContainer(
                        rating: '5',
                      ),
                      const RatingContainer(
                        rating: '4',
                      ),
                      const RatingContainer(
                        rating: '3',
                      ),
                      const RatingContainer(
                        rating: '2',
                      ),
                      const RatingContainer(
                        rating: '1',
                      ),
                    ],
                  ),
                ),
                const CoustomerReviewHeader(
                  name: 'Priyanka',
                  date: ' 3 July 2021',
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                  child: SizedBox(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Container_HS(
                          width: 48,
                        ),
                        Container_HS(
                          width: 48,
                        ),
                        Container_HS(
                          width: 48,
                        ),
                        Container_HS(
                          width: 48,
                        ),
                        Container_HS(
                          width: 48,
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                      'Brilliant phone, very nice to hold in hand, good aesthetics, great new features, choice of different colours, fantastic price, good delivery options, can’t be faulted.',
                      style: TextStyle(
                          fontFamily: 'Proxima Nova A',
                          fontSize: 16,
                          color: Color.fromRGBO(161, 161, 161, 1),
                          height: 1.5)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    color: Color.fromRGBO(93, 93, 93, 1),
                    thickness: 1.5,
                  ),
                ),
                const CoustomerReviewHeader(name: 'Amit', date: '2 July 2021'),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Text(
                      'Brilliant phone, very nice to hold in hand, good aesthetics, great new features, choice of different colours, fantastic price, good delivery options, can’t be faulted.',
                      style: TextStyle(
                          fontFamily: 'Proxima Nova A',
                          fontSize: 16,
                          color: Color.fromRGBO(161, 161, 161, 1),
                          height: 1.5)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text.rich(
                      TextSpan(style: const TextStyle(fontSize: 14), children: [
                    TextSpan(
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                        text: "View More(150)",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            //print('hello');
                          }),
                  ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CoustomerReviewHeader extends StatelessWidget {
  const CoustomerReviewHeader({
    required this.name,
    required this.date,
    Key? key,
  }) : super(key: key);
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(
            Icons.star,
            size: 20,
            color: Color.fromRGBO(255, 194, 57, 1),
          ),
          const Text('4',
              style: TextStyle(fontFamily: 'Proxima Nova A', fontSize: 14)),
          const SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: const TextStyle(fontFamily: 'Proxima Nova A', fontSize: 14),
          ),
          const Spacer(),
          Text(
            date,
            style: const TextStyle(
                fontFamily: 'Proxima Nova A',
                fontSize: 14,
                color: Color.fromRGBO(161, 161, 161, 1)),
          ),
        ],
      ),
    );
  }
}

class RatingContainer extends StatelessWidget {
  const RatingContainer({Key? key, required this.rating}) : super(key: key);

  final String rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 52,
      //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 20,
              color: Color.fromRGBO(255, 194, 57, 1),
            ),
            Text(rating)
          ],
        ),
      ),
    );
  }
}

class Container_HS extends StatelessWidget {
  const Container_HS({
    required this.width,
    Key? key,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: width,
        color: const Color.fromRGBO(93, 93, 93, 1),
      ),
    );
  }
}
