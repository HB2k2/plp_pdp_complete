import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';

import 'exchange_4.dart';

class ExchangeJourneyThird extends StatefulWidget {
  const ExchangeJourneyThird({super.key});

  @override
  State<ExchangeJourneyThird> createState() => _ExchangeJourneyThirdState();
}

class _ExchangeJourneyThirdState extends State<ExchangeJourneyThird> {
  @override
  Widget build(BuildContext context) {
    Color buttonColour = Color(0xffCCCCCC);
    const List<String> list = <String>[
      '3GB/32GB',
      'Option 2',
      'Option 3',
      'Option 4',
      'Option 5',
      'Option 6'
    ];
    String dropdownValue = list.first;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.87,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 32,
            ),
            topBar(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Exchange Your Device',
                style: TextStyle(color: Color(0xffffffff), fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 200),
                            child: Text(
                              'Brand/model',
                              style: TextStyle(
                                  color: Color(0xffa1a1a1), fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Variant',
                              style: TextStyle(
                                  color: Color(0xffa1a1a1), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 16.0, top: 11, right: 50),
                            child: Text(
                              'Apple iPhone 13 Pro Max',
                              style: TextStyle(
                                  color: Color(0xffcccccc), fontSize: 20),
                            ),
                          ),
                          DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_drop_down_sharp),
                              elevation: 16,
                              style: const TextStyle(color: Color(0xffffffff)),
                              underline: Container(
                                height: 2,
                                color: Colors.grey,
                              ),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              dropdownColor: Color(0xff1e1e1e),
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                  ),
                                );
                              }).toList()),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0, top: 10),
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 10),
                        child: Text(
                          'Estimated Exhange Value',
                          style:
                              TextStyle(color: Color(0xffcccccc), fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 10),
                        child: Text(
                          '₹2,030',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 24, right: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.info_outline,
                    color: Color(0xffa1a1a1),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffa1a1a1)),
                  ),
                  labelText: 'Enter IMEI Number',
                  labelStyle: TextStyle(
                    color: Color(0xffa1a1a1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    width: 320,
                    height: 48,
                    child: RichText(
                      text: const TextSpan(
                        text: 'You can call ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffa1a1a1)),
                        children: [
                          TextSpan(
                            text: '*#06#',
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' from the selected device to get your IMEI number',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffa1a1a1)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: ImageIcon(
                      AssetImage('assets/bottom_sheet_icons/call.png'),
                      color: Colors.white,
                      size: 32,
                    ),
                  )
                ],
              ),
            ),
            TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: buttonColor)))),
                // ignore: avoid_returning_null_for_void
                onPressed: () {
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
                    builder: (context) => const ExchangeJourneyFinal(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizeBox(),
                    Text(
                      'Apply',
                      style:
                          TextStyle(fontSize: textSize, fontFamily: fontFamily),
                    ),
                    SizeBox()
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
