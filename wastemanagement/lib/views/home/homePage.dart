// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wastemanagement/views/home/profile.dart';
import 'package:wastemanagement/views/shops/shop.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/findProgram.dart';

import '../../const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _onItemTapped(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }

  bool home = true;
  bool shop = false;

  bool profile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedItemIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 25,
              height: 25,
              child: FadeInImage(
                  placeholder: AssetImage("assets/images/placeholder.png"),
                  image: AssetImage("assets/icons/online-shopping.png")),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                height: 25,
                width: 25,
                child: FadeInImage(
                    placeholder: AssetImage("assets/images/placeholder.png"),
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/4290/4290854.png"))),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                height: 25,
                width: 25,
                child: FadeInImage(
                    placeholder: AssetImage("assets/images/placeholder.png"),
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/1077/1077012.png"))),
            label: '',
          ),
        ],
      ),

      body: widgetOptions.elementAt(selectedItemIndex),
      // body: home
      //     ? HomePage()
      //     : shop
      //         ? Shop()
      //         : profile
      //             ? Profile()
      //             : Container(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Manage Waste",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.location_on),
                  label: Text(
                    "Flat 1A,101 Block, Behind ABC Market",
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.grey[600],
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),

              // Spacer(),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindProgram()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey[400])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: FadeInImage(
                              placeholder:
                                  AssetImage("assets/images/placeholder.png"),
                              image: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/1507/1507149.png")),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: Text(
                          "Create collection container",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[400])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: FadeInImage(
                            placeholder:
                                AssetImage("assets/images/placeholder.png"),
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/2983/2983780.png")),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          "Drop-off at nearby collection container",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[400])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: FadeInImage(
                              placeholder:
                                  AssetImage("assets/images/placeholder.png"),
                              image: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/618/618987.png"))),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                        "Schedule pickup from your doorstep",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
