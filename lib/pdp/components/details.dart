// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ZipProtectionDetails extends StatelessWidget {
  const ZipProtectionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                      width: 360,
                      height: 56,
                      decoration:
                      BoxDecoration(color: Color(0xFF1E1E1E), boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            offset: Offset(0, 2),
                            blurRadius: 3)
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Extended warranty - Onsitego',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 21.9),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  photobox(),
                  buildTitle(),
                  buildtext(),
                  photobox(),
                  buildTitle(),
                  buildtext(),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Protection plan features',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                  buildtile(),
                  buildtile(),
                  buildtile()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildtile() {
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40,
              width: 40,
              color: Colors.grey,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: Text(
                  'Title of the section',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Lorem ipsum dolor sit amet, consect \n etur adipiscing elit.',
                  style: TextStyle(
                      color: Color.fromRGBO(161, 161, 161, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding buildtext() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nulla ac arcu venenatis sagittis ut quis sapien.',
        style: TextStyle(
            color: Color.fromRGBO(161, 161, 161, 1),
            fontWeight: FontWeight.w400,
            fontSize: 16),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Title of the section',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
      ),
    );
  }

  Padding photobox() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 16, 16),
      child: Container(
        width: 360,
        height: 203,
        color: Colors.grey,
      ),
    );
  }
}
