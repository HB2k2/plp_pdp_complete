import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/topbanner/mergedcompnents.dart';

import 'package:flutter_application_2/constants/constants.dart';

//import 'package:flutter_application_2/pdp/pdppage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScrollToHideWidget(
      controller: controller,
      child: Container(
        color: const Color(0xff1E1E1E),
        height:
            (DoubleConstant.constant56 + MediaQuery.of(context).padding.bottom),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: IntConstant.constant5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: DoubleConstant.constant22,
                  right: DoubleConstant.constant22,
                  top: DoubleConstant.constant10),
              child: navigation(imageName[index], index),
            );
          },
        ),
      ),
    );
  }
}

Widget navigation(String imageName, int index) {
  return GestureDetector(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset("assets/bottom_nav/$imageName.png",
            scale: DoubleConstant.constant1),
        SizedBox(
          height: DoubleConstant.constant2,
        ),
        Text(imageName, style: styleNavBar),
      ],
    ),
    onTap: () {
      if (kDebugMode) {
        print(Text("$imageName got clicked "));
      }
    },
  );
}

class ScrollToHideWidget extends StatefulWidget {
  final Widget child;
  final ScrollController controller;
  final Duration duration;

  const ScrollToHideWidget({
    Key? key,
    required this.child,
    required this.controller,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(listen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(listen);
    super.dispose();
  }

  void listen() {
    final direction = widget.controller.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible) {
      setState(() {
        isVisible = true;
      });
    }
  }

  void hide() {
    if (isVisible) {
      setState(() {
        isVisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: widget.duration,
        height: isVisible ? kBottomNavigationBarHeight : 0,
        child: Wrap(
          children: [widget.child],
        ),
      );
}
