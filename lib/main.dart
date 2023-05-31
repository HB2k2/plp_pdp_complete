import 'package:flutter/material.dart';
// import 'package:plp_new/pdp/components/benefitAndPlans.dart';
import 'pdp/components/benefitAndPlans.dart';
// import 'package:plp_new/pdp/pdppage.dart';
import 'package:flutter_application_2/pdp/pdppage.dart';
import 'topbanner/mergedcompnents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          textTheme:
              ThemeData.dark().textTheme.apply(fontFamily: 'Proxima-Nova-A'),
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),
      home: const TopBanner(),
    );
  }
}
