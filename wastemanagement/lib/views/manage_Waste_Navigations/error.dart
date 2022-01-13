// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/home/homePage.dart';

class Error extends StatefulWidget {
  @override
  _ErrorState createState() => _ErrorState();
}

class _ErrorState extends State<Error> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(29.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width / 3.5, 35),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text(
                    'Try again!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        height: 150,
                        width: 150,
                        image: AssetImage("assets/images/sad.png")),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Error!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontFamily: 'PrefaceSans',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Text(
                  "Unable to update collection container details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'PrefaceSans', color: Colors.grey[600]),
                )
              ],
            ),
          ),
        ));
  }
}
