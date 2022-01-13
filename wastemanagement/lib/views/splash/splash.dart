// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/Location/allowlocation.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AllowLocation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          color: Colors.white,
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Center(
                child: Container(
                    height: 180,
                    width: 180,
                    child: Image.asset("assets/images/wclogo.png")),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 60.0, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Collection & Cleaning Services",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
