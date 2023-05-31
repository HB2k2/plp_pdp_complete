import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pdp/pdp_merged_components/constants.dart';

import 'package:flutter_application_2/bottom_sheet_widgets/specifications_bottomsheet.dart';

import 'package:flutter_application_2/bottom_sheet_widgets/customer_reviews_bottomsheet.dart';
import 'details.dart';

class MyProductDetailPage extends StatefulWidget {
  const MyProductDetailPage({Key? key}) : super(key: key);

  @override
  State<MyProductDetailPage> createState() => _MyProductDetailPageState();
}

class _MyProductDetailPageState extends State<MyProductDetailPage> {
  Widget buildBottomSheet(BuildContext context) {
    return const ZipProtectionDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Spacing.spacing20,
        right: Spacing.spacing20,
        top: Spacing.spacing16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ClipOval(
                child: Image(
                  width: Width.width48,
                  height: Height.height48,
                  image: AssetImage('pdp_assets/images/warranty.png'),
                ),
              ),
              ClipOval(
                child: Image(
                  width: Width.width48,
                  height: Height.height48,
                  image: AssetImage('pdp_assets/images/delivery.png'),
                ),
              ),
              ClipOval(
                child: Image(
                  width: Width.width48,
                  height: Height.height48,
                  image: AssetImage('pdp_assets/images/neupass.png'),
                ),
              ),
            ],
          ),
          Row(children: const [
            Expanded(
              child: Center(
                child: Text(
                  "Warranty",
                  style: TextStyle(fontStyle: FontStyle.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Free delivery",
                  style: TextStyle(fontStyle: FontStyle.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "NeuPass \n Benefit",
                  style: TextStyle(fontStyle: FontStyle.normal),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          const SizedBox(height: Height.height12),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(Spacing.spacing5),
                  decoration: BoxDecoration(
                    color: const Color(0xff1E1E1E),
                    borderRadius: BorderRadius.circular(CircularRadius.radius8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Spacing.spacing8),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              constraints: BoxConstraints.loose(Size(
                                  MediaQuery.of(context).size.width,
                                  MediaQuery.of(context).size.height * 0.75)),

                              // enableDrag: true,
                              //backgroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                // <-- SEE HERE
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16.0),
                                ),
                              ),
                              context: context,
                              builder: (context) => const Specifications(),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _getOverviewIcon(),
                              const Text(
                                "Overview &\nspecifications",
                                style: TextStyle(
                                    fontSize: 15, fontStyle: FontStyle.normal),
                              ),
                              const SizedBox(height: Height.height12),
                              const SizedBox(width: Width.width16),
                            ],
                          ),
                        ),
                        const SizedBox(width: Width.width35),
                        getChevronRightIcon(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: Spacing.spacing16),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(Spacing.spacing14),
                  decoration: BoxDecoration(
                    color: const Color(0xff1E1E1E),
                    borderRadius: BorderRadius.circular(CircularRadius.radius8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(Spacing.spacing8),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _getStarIcon(),
                            const SizedBox(height: Height.height12),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  constraints: BoxConstraints.loose(Size(
                                      MediaQuery.of(context).size.width,
                                      MediaQuery.of(context).size.height *
                                          0.75)),

                                  // enableDrag: true,
                                  //backgroundColor: Colors.transparent,
                                  shape: const RoundedRectangleBorder(
                                    // <-- SEE HERE
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16.0),
                                    ),
                                  ),
                                  context: context,
                                  //add the reviews bottomsheet
                                  builder: (context) => CustomerReviews(),
                                );
                              },
                              child: const Text(
                                "Customer \n  reviews",
                                style: TextStyle(
                                    fontSize: 15, fontStyle: FontStyle.normal),
                              ),
                            ),
                            const SizedBox(width: Width.width16),
                          ],
                        ),
                        const SizedBox(width: Width.width48),
                        getChevronRightIcon(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Height.height24),
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              "Zip protection plans",
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
            ),
          ),
          const SizedBox(height: Height.height12),
          Card(
            color: const Color(0xff1E1E1E),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Spacing.spacing8)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 6, right: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const ClipOval(
                          child: Image(
                              width: Width.width24,
                              height: Height.height24,
                              image:
                                  AssetImage('pdp_assets/images/tata_aia.png')),
                        ),
                      ),
                      const SizedBox(width: Width.width16),
                      const Text(
                        "Tata AIA",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(width: Width.width52),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 60),
                        decoration: BoxDecoration(
                          color: const Color(0xff1E1E1E),
                          border:
                              Border.all(color: Colors.deepPurple, width: 4),
                          borderRadius:
                              BorderRadius.circular(CircularRadius.radius24),
                        ),
                        child: const Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Height.height8),
                  RichText(
                      text: TextSpan(
                          text:
                              'Extended warranty plans starting at \n ₹1699 (Approx ₹566/mo.) ',
                          style: const TextStyle(
                              fontStyle: FontStyle.normal, fontSize: 19),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Learn More',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontStyle: FontStyle.normal,
                              fontSize: 19,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showModalBottomSheet<dynamic>(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: buildBottomSheet);
                              })
                      ]))
                ],
              ),
            ),
          ),
          const SizedBox(height: Height.height12),
          Card(
            color: const Color(0xff1E1E1E),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Spacing.spacing8)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 6, right: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const ClipOval(
                          child: Image(
                              width: Width.width24,
                              height: Height.height24,
                              image:
                                  AssetImage('pdp_assets/images/tata_aia.png')),
                        ),
                      ),
                      const SizedBox(width: Width.width16),
                      const Text(
                        "Tata AIA",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(width: Width.width52),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 60),
                        decoration: BoxDecoration(
                          color: const Color(0xff1E1E1E),
                          border:
                              Border.all(color: Colors.deepPurple, width: 4),
                          borderRadius:
                              BorderRadius.circular(CircularRadius.radius24),
                        ),
                        child: const Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Height.height8),
                  RichText(
                      text: TextSpan(
                          text:
                              'Extended warranty plans starting at \n ₹1699 (Approx ₹566/mo.) ',
                          style: const TextStyle(
                              fontStyle: FontStyle.normal, fontSize: 19),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Learn More',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontStyle: FontStyle.normal,
                              fontSize: 19,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showModalBottomSheet<dynamic>(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: buildBottomSheet);
                              })
                      ])),
                ],
              ),
            ),
          ),
          const SizedBox(height: Height.height12),
        ],
      ),
    );
  }

  Image getChevronRightIcon() {
    return const Image(
      width: Width.width16,
      height: Height.height16,
      color: Color(0xffA1A1A1),
      image: AssetImage(
        'pdp_assets/images/chevron_right.png',
      ),
    );
  }

  Image _getStarIcon() {
    return const Image(
      width: Width.width32,
      height: Height.height32,
      image: AssetImage('pdp_assets/images/star.png'),
    );
  }

  Image _getOverviewIcon() {
    return const Image(
      width: Width.width52,
      height: Height.height52,
      image: AssetImage(
        'pdp_assets/images/overview.png',
      ),
    );
  }
}
