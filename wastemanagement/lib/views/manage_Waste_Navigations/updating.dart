// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/succeed.dart';

class Updating extends StatefulWidget {
  @override
  _UpdatingState createState() => _UpdatingState();
}

class _UpdatingState extends State<Updating> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Success()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            Image(
                height: 150,
                width: 200,
                image: AssetImage("assets/images/boxes.png")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultTextStyle(
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'PrefaceSans',
                    fontSize: 40),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Loading...',
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
    // height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     color: Colors.white,