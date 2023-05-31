import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class photo extends StatefulWidget {
  const photo({Key? key}) : super(key: key);
  @override
  State<photo> createState() => _photoState();
}
List<String> imglist = [
  'pdp_assets/images/phoneimg1.png',
  'pdp_assets/images/phoneimg2.png',
  'pdp_assets/images/phoneimg1.png',
  'pdp_assets/images/phoneimg2.png',
  'pdp_assets/images/phoneimg1.png',
  'pdp_assets/images/phoneimg2.png',
  // 'assets/images/phonePDP.jpeg',
  // 'assets/images/phonePDP.jpeg',
  // 'assets/images/phonePDP.jpeg',
  // 'assets/images/phonePDP.jpeg',
];
int selectedImage=0;
class _photoState extends State<photo> {
  @override
  final List<Widget> imageSliders = imglist
      .map((item) =>Container(
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,80,0,100),
          child: Center(
              child: Image.asset(
                item,
                height: 350,
                width: 300,
                fit: BoxFit.fill,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(imglist.length, (index) => buildSmallPreview(imglist.indexOf(item))),
          ],
        )
      ],
    ),
  )).toList();
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                  elevation: 1.0,
                backgroundColor: const Color(0xff1E1E1E),
                  title: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/Primary.png',fit: BoxFit.fill,),
                  )),
              body: Center(
                child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 12 / 20,
                      viewportFraction: 1,
                    ),
                    items: imageSliders),
              ),
            )));
  }
}
Container buildSmallPreview(int item) {
  return
    Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(right: 4),
      height: 56,
      width: 56,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color:selectedImage == item ? Colors.deepPurple: Colors.grey )
      ),
      // child: Image.asset(
      //   imglist[item],)
    );

}