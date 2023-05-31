import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';
import 'exchange_3.dart';

class ExchangeJourneySecond extends StatefulWidget {
  const ExchangeJourneySecond({super.key});
  @override
  State<ExchangeJourneySecond> createState() => _ExchangeJourneySecondState();
}

class _ExchangeJourneySecondState extends State<ExchangeJourneySecond> {
  //const CustomerReviews({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topBar(),
          const Padding(
            padding: EdgeInsets.only(bottom: 16, left: 16.0),
            child: Text(
              'Exchange your device',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Proxima Nova A',
                  fontStyle: FontStyle.normal,
                  color: Colors.white),
            ),
          ),
          // SizedBox(
          //   height: 16,
          // ),
          Container(
              //alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 16),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xff5D5D5D)),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
              )),
          const SizedBox(
            height: 32,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "Select [brand name] model",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),

          GestureDetector(
            onTap: () {
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
                builder: (context) => const ExchangeJourneyThird(),
              );
            },
            child: ExpansionTile(
              title: const Text(
                "Model with Variant",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: const Color(0xff1E1E1E),
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: [
                      Container(
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(
                            child: Text(
                          "2GB / 16GB",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(
                            child: Text(
                          "3GB / 32GB",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),

          const ListTile(
            title: Text(
              "Model",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          ExpansionTile(
              title: const Text(
                "Model with Variant",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xff1E1E1E),
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Container(
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(
                            child: Text(
                          "2GB / 16GB",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(
                            child: Text(
                          "3GB / 32GB",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                    ],
                  ),
                )
              ]),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          const ListTile(
            title: Text(
              "Model",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          const ListTile(
            title: Text(
              "Model",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          const ListTile(
            title: Text(
              "Model",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          ExpansionTile(
            title: const Text(
              "Model with Variant",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black54,
            children: [
              ListTile(
                title: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Center(
                          child: Text(
                        "2GB / 16GB",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 32,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Center(
                          child: Text(
                        "3GB / 32GB",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
          const ListTile(
            title: Text(
              "Model",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 2,
          ),
        ],
      ),
    );
  }
}

// class ExchangeJourneySecond extends StatelessWidget {
//   const ExchangeJourneySecond({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.only(left: 16),
//             height: 660,
//             width: 450,
//             color: const Color(0xff1E1E1E),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const Align(
//                     alignment: Alignment.topLeft,
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 16.0, bottom: 16),
//                       child: Text(
//                         'Exchange your device',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontFamily: 'Proxima Nova A',
//                             fontStyle: FontStyle.normal,
//                             color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   // SizedBox(
//                   //   height: 16,
//                   // ),
//                   Container(
//                     //alignment: Alignment.center,
//                       padding: const EdgeInsets.only(right: 16),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           contentPadding:
//                           const EdgeInsets.symmetric(vertical: 10.0),
//                           prefixIcon: const Icon(
//                             Icons.search,
//                             color: Colors.grey,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                                 width: 1, color: Color(0xff5D5D5D)),
//                             borderRadius: BorderRadius.circular(32),
//                           ),
//                           hintText: 'Search',
//                           hintStyle:
//                           const TextStyle(color: Colors.grey, fontSize: 18),
//                         ),
//                       )),
//                   const SizedBox(
//                     height: 32,
//                   ),
//                   const TextField(
//                     decoration: InputDecoration(
//                       hintText: "Select [brand name] model",
//                       hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
//                     ),
//                   ),
//
//                   ListView(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.all(8),
//                     children: const <Widget>[
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model with Variant",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                           trailing: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                           //trailing: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model with Variant",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                           trailing: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model with Variant",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                           trailing: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
//                         ),
//                       ),
//                       Card(
//                         child: ListTile(
//                           title: Text(
//                             "Model",
//                             style:TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



