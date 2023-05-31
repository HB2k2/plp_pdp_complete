import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'components/bankoffers.dart';
import 'components/beforebankoffers.dart';
import 'components/boughttogether.dart';
import 'components/gallery.dart';
import 'components/pdp_nav_bar.dart';
import 'components/similarproducts.dart';
import 'components/benefitAndPlans.dart';


class PDP extends StatefulWidget {
  const PDP({Key? key}) : super(key: key);

  @override
  State<PDP> createState() => _PDPState();
}

List<String> imglist = [
  'pdp_assets/images/phoneimg1.png',
  'pdp_assets/images/phoneimg2.png',
  'pdp_assets/images/phoneimg1.png',
  'pdp_assets/images/phoneimg2.png',
  'pdp_assets/images/phoneimg1.png',
  'pdp_assets/images/phoneimg2.png',
];

final controller = ScrollController();

class _PDPState extends State<PDP> {



  @override
  Widget build(BuildContext context) {
    final List<Container> imageSliders = imglist
        .map((item) => Container(
      color: Colors.white,
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const photo()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: <Widget>[
              Image.asset(
                item,
                height: 500,
                width: 400,
                fit: BoxFit.fill,
              ),
              Positioned(
                  top: 20,
                  left: 350,
                  right: 10,
                  child: Center(
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color(0xffcccccc),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share_outlined),
                          color: Colors.black,
                        )),
                  )),
              Positioned(
                top: 80,
                left: 350,
                right: 10,
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color(0xffcccccc),
                    child: TextButton(
                      child: const Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                        );
                      },
                    )

                ),
              ),
              Positioned(
                  bottom: 5.0,
                  left: 25,
                  right: 350.0,
                  child: Container(
                    height: 15.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: const Color(0xffa1a1a1),
                    ),
                    child: Center(
                      child: Text(
                          '${imglist.indexOf(item) + 1}/${imglist.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          )),
                    ),
                  ))
            ]),
          ],
        ),
      ),
    ))
        .toList();
   Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
          actions: [
            Icon(Icons.close),
          ],
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(children: [
            CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 12 / 12,
                  viewportFraction: 1,
                ),
                items: imageSliders),
            SizedBox(
              height: 24,
            ),
            BeforeBankOffers(),
            BankOffers(),
            MyProductDetailPage(),
            BoughtTogether(),
            ShowSimilarProducts()
          ]),
        ),
        bottomNavigationBar: NavBar2(),
      ),
    );
  }
}
