// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/home/homePage.dart';
import 'package:wastemanagement/views/home/profile.dart';
import 'package:wastemanagement/views/shops/shop.dart';

double userLatitude = 0.0;
double userLongitude = 0.0;

/// Bottom Navigation Bar

/// =------------------------------//

final List<Widget> widgetOptions = <Widget>[
  HomePage(),
  Shop(),
  Profile(),
];
int selectedItemIndex = 0;
// int _selectedItemIndex = 0;
// bool isPressed = false;

//----------------------------//

Widget Categories(var img) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 125,
            width: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color.fromRGBO(244, 245, 247, 1),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      height: 80,
                      width: 115,
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FadeInImage(
                            placeholder:
                                AssetImage("assets/images/placeholder.png"),
                            image: NetworkImage("$img"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Lorem",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ProductDetailSlider(var img) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            width: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color.fromRGBO(244, 245, 247, 1),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      height: 180,
                      width: double.infinity,
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FadeInImage(
                            placeholder:
                                AssetImage("assets/images/placeholder.png"),
                            image: NetworkImage("$img"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ProgramSlider(var img) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 210,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color.fromRGBO(244, 245, 247, 1),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      height: 180,
                      width: double.infinity,
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FadeInImage(
                            placeholder:
                                AssetImage("assets/images/placeholder.png"),
                            image: NetworkImage("$img"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
