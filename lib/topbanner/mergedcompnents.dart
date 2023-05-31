import 'package:flutter/material.dart';
import 'package:flutter_application_2/inlinefilters&bottomnavbar/end.dart';
import 'package:flutter_application_2/inlinefilters&bottomnavbar/filter_modified.dart';
import 'package:flutter_application_2/topbanner/sortandfilter.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter_application_2/inlinefilters&bottomnavbar/similar_products.dart';
import 'package:flutter_application_2/productcard/card.dart';
import 'customappbar.dart';
import 'package:flutter_application_2/inlinefilters&bottomnavbar/nav_bar.dart';

class TopBanner extends StatefulWidget {
  const TopBanner({Key? key}) : super(key: key);

  @override
  State<TopBanner> createState() => _TopBannerState();
}

final controller = ScrollController();

class _TopBannerState extends State<TopBanner> {
  @override
  Widget build(BuildContext context) {
    var bgColForTopBanner = const Color(0xff1e1e1e);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 112,
          child: Column(
            children: [
              ListTile(
                tileColor: bgColForTopBanner,
                leading: IconButton(
                  icon: Image.asset(
                    'images/Group.png',
                  ),
                  onPressed: () {},
                ),
                title: const Center(
                  child: Text(
                    "Electronics",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                trailing: const Icon(Icons.close),
              ),
              Container(
                color: bgColForTopBanner,
                height: 56,
                child: Container(
                  color: const Color(0xff1E1E1E),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.arrow_back_ios_new),
                      Expanded(child: Container()),
                      IconButton(
                        icon: Image.asset('images/Location.png'),
                        onPressed: () {},
                      ),
                      const Text(
                        '400019',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Image.asset(
                          'images/Search.png',
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: <Widget>[
              Image.asset(
                'images/img.png',
                width: double.infinity,
                height: 216,
                fit: BoxFit.cover,
              ),
              StickyHeader(
                  header: SortAndFilter(),
                  content: Column(
                    children: [
                      const SizedBox(
                        height: 8.0,
                      ),
                      const CardWidget(
                        DealOfTheDay: true,
                        ProductAvailable: true,
                      ),
                      Column(
                        children: const [
                          CardWidget(
                            DealOfTheDay: true,
                            ProductAvailable: false,
                          ),
                          CardWidget(
                            DealOfTheDay: false,
                            ProductAvailable: true,
                          ),
                          CardWidget(
                            DealOfTheDay: false,
                            ProductAvailable: false,
                          ),
                          ModifiedFilter(),
                          // child: ModifiedFilter()),
                          CardWidget(
                            DealOfTheDay: true,
                            ProductAvailable: true,
                          ),
                          CardWidget(
                            DealOfTheDay: true,
                            ProductAvailable: false,
                          ),
                          CardWidget(
                            DealOfTheDay: false,
                            ProductAvailable: true,
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ShowSimilarProducts(),
                              )),
                          EndOfSpace(),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
