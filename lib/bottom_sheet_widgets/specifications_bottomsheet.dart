import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';
import 'package:flutter_application_2/constants/constants.dart';

class Specifications extends StatefulWidget {
  const Specifications({super.key});

  @override
  State<Specifications> createState() => _SpecificationsState();
}

class _SpecificationsState extends State<Specifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1E1E1E),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topBar(),
            Row(
              children: [
                Padding(
                  padding: constPadding,
                  child: Image.asset(
                    'assets/bottom_sheet_icons/vivo.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Vivo X70 Pro+ 5G (256GB ROM, 12GB ',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'RAM, V2114, Blue Haze)',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const ContentHeading(
              headingTitle: 'Overview',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 15),
              child: Text.rich(TextSpan(style: commonTextFontSize, children: [
                const TextSpan(
                  style: TextStyle(
                      fontSize: 17, color: Color.fromRGBO(161, 161, 161, 1)),
                  text:
                      'Is your phone running out of charge always? \nThen, buy Vivo X70 Pro+ 5G online, which is \nequipped with a 4500 mAh battery. So, it has \nenough power to let you work, watch...  ',
                ),
                TextSpan(
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    text: "More",
                    recognizer: TapGestureRecognizer()..onTap = () async {}),
              ])),
            ),
            divider(),
            const ContentHeading(
              headingTitle: 'Key features',
            ),
            Column(
              children: const [
                BulletPoints(
                  features: '17.22 cm (6.78"), WQHD+',
                ),
                BulletPoints(
                  features: '12GB RAM | 256GB ROM | Android 11 ',
                ),
                BulletPoints(
                  features: 'Qualcomm Snapdragon Octa Core 888+ 5G Processor',
                ),
                BulletPoints(features: 'R: 50MP + 48MP + 12MP + 8MP | F: 32MP'),
                BulletPoints(features: '4500 mAh Lithium Polymer Battery'),
                BulletPoints(
                    features: 'Ambient Light Sensor | Fingerprint Sensor')
              ],
            ),
            divider(),
            const ContentHeading(headingTitle: 'Product Specifications'),
            const ExpandableEmptyList(
              listHeading: 'Mobile Catogory',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ExpansionTile(
                  childrenPadding: const EdgeInsets.symmetric(vertical: 20),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  title: Text(
                    'Processor details',
                    style: commonHeadingTextFontSize,
                  ),
                  children: [
                    Text(
                      'Processor brand',
                      style: dropDownHeadingTextFontSize,
                    ),
                    CustomsizedBox(height: relatedContentHeight),
                    Text(
                      'Snapdragon',
                      style: commonTextFontSize,
                    ),
                    CustomsizedBox(height: nonRelatedContentHeight),
                    Text(
                      'Processor name',
                      style: dropDownHeadingTextFontSize,
                    ),
                    CustomsizedBox(
                      height: relatedContentHeight,
                    ),
                    Text(
                      'Kryo 680',
                      style: commonTextFontSize,
                    ),
                    CustomsizedBox(height: nonRelatedContentHeight),
                    Text(
                      'CPU Specs',
                      style: dropDownHeadingTextFontSize,
                    ),
                    CustomsizedBox(height: relatedContentHeight),
                    Text(
                      '3.0GHz x 1, 2.41GHz x 3, 1.80GHz x 4',
                      style: commonTextFontSize,
                    ),
                    CustomsizedBox(height: nonRelatedContentHeight),
                    Text(
                      'GPU (Graphics)',
                      style: dropDownHeadingTextFontSize,
                    ),
                    CustomsizedBox(height: relatedContentHeight),
                    Text(
                      'Adreno 660',
                      style: commonTextFontSize,
                    ),
                  ],
                ),
              ),
            ),
            const ExpandableEmptyList(listHeading: 'Operating system'),
            const ExpandableEmptyList(listHeading: 'Storage Specifications'),
            const ExpandableEmptyList(listHeading: 'Screen Specifications'),
            const ExpandableEmptyList(listHeading: 'Operating system'),
          ],
        ),
      ),
    );
  }

  Padding divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        thickness: 2,
      ),
    );
  }
}

class ExpandableEmptyList extends StatelessWidget {
  const ExpandableEmptyList({
    Key? key,
    required this.listHeading,
  }) : super(key: key);

  final String listHeading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: constPadding,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ExpansionTile(
          title: Text(
            listHeading,
            style: commonTextFontSize,
          ),
        ),
      ),
    );
  }
}

class CustomsizedBox extends StatelessWidget {
  const CustomsizedBox({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class BulletPoints extends StatelessWidget {
  const BulletPoints({
    Key? key,
    required this.features,
  }) : super(key: key);

  final String features;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: ListTile(
        horizontalTitleGap: 0,
        minVerticalPadding: 0,
        leading: const Icon(
          Icons.fiber_manual_record,
          size: 15,
          color: Color.fromRGBO(161, 161, 161, 1),
        ),
        title: Text(
          features,
          style: const TextStyle(
              fontSize: 16, color: Color.fromRGBO(161, 161, 161, 1)),
        ),
      ),
    );
  }
}

class ContentHeading extends StatelessWidget {
  const ContentHeading({super.key, required this.headingTitle});
  final String headingTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: constPadding,
      child: Text(
        headingTitle,
        style: headingFontSize,
      ),
    );
  }
}
