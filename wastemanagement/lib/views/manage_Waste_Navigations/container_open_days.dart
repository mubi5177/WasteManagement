// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/container_open_hour.dart';

class ContainerOpenDays extends StatefulWidget {
  @override
  _ContainerOpenDaysState createState() => _ContainerOpenDaysState();
}

class _ContainerOpenDaysState extends State<ContainerOpenDays> {
  bool isPress = false;
  bool isPress2 = false;
  bool isPress3 = false;
  bool isPress4 = false;
  bool isPress5 = false;
  bool isPress6 = false;
  bool isPress7 = false;
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
                      MaterialPageRoute(
                          builder: (context) => ContainerOpenHours()),
                    );
                  },
                  child: Text(
                    'Confirm open days',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
            ),
          ),
          title: Text(
            "Container open days",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, top: 20),
                  child: Text(
                    "Select days",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (isPress == true) {
                            setState(() {
                              isPress = false;
                            });
                          } else {
                            setState(() {
                              isPress = true;
                            });
                          }
                        },
                        child: Ink(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: isPress
                                        ? Colors.transparent
                                        : Colors.grey[800])),
                            child: CircleAvatar(
                              backgroundColor:
                                  isPress ? Colors.green : Colors.white,
                              radius: 30,
                              child: Text(
                                "Mo",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: isPress
                                        ? Colors.white
                                        : Colors.grey[700]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isPress2 == true) {
                            setState(() {
                              isPress2 = false;
                            });
                          } else {
                            setState(() {
                              isPress2 = true;
                            });
                          }
                        },
                        child: Ink(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: isPress2
                                        ? Colors.transparent
                                        : Colors.grey[800])),
                            child: CircleAvatar(
                              backgroundColor:
                                  isPress2 ? Colors.green : Colors.white,
                              radius: 30,
                              child: Text(
                                "Tu",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: isPress2
                                        ? Colors.white
                                        : Colors.grey[700]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isPress3 == true) {
                            setState(() {
                              isPress3 = false;
                            });
                          } else {
                            setState(() {
                              isPress3 = true;
                            });
                          }
                        },
                        child: Ink(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: isPress3
                                        ? Colors.transparent
                                        : Colors.grey[800])),
                            child: CircleAvatar(
                              backgroundColor:
                                  isPress3 ? Colors.green : Colors.white,
                              radius: 30,
                              child: Text(
                                "We",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: isPress3
                                        ? Colors.white
                                        : Colors.grey[700]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (isPress4 == true) {
                            setState(() {
                              isPress4 = false;
                            });
                          } else {
                            setState(() {
                              isPress4 = true;
                            });
                          }
                        },
                        child: Ink(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: isPress4
                                        ? Colors.transparent
                                        : Colors.grey[800])),
                            child: CircleAvatar(
                              backgroundColor:
                                  isPress4 ? Colors.green : Colors.white,
                              radius: 30,
                              child: Text(
                                "Th",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: isPress4
                                        ? Colors.white
                                        : Colors.grey[700]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isPress5 == true) {
                            setState(() {
                              isPress5 = false;
                            });
                          } else {
                            setState(() {
                              isPress5 = true;
                            });
                          }
                        },
                        child: Ink(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: isPress5
                                        ? Colors.transparent
                                        : Colors.grey[800])),
                            child: CircleAvatar(
                              backgroundColor:
                                  isPress5 ? Colors.green : Colors.white,
                              radius: 30,
                              child: Text(
                                "Fr",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: isPress5
                                        ? Colors.white
                                        : Colors.grey[700]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isPress6 == true) {
                            setState(() {
                              isPress6 = false;
                            });
                          } else {
                            setState(() {
                              isPress6 = true;
                            });
                          }
                        },
                        child: Ink(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: isPress6
                                        ? Colors.transparent
                                        : Colors.grey[800])),
                            child: CircleAvatar(
                              backgroundColor:
                                  isPress6 ? Colors.green : Colors.white,
                              radius: 30,
                              child: Text(
                                "Sa",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: isPress6
                                        ? Colors.white
                                        : Colors.grey[700]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            if (isPress7 == true) {
                              setState(() {
                                isPress7 = false;
                              });
                            } else {
                              setState(() {
                                isPress7 = true;
                              });
                            }
                          },
                          child: Ink(
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      color: isPress7
                                          ? Colors.transparent
                                          : Colors.grey[800])),
                              child: CircleAvatar(
                                backgroundColor:
                                    isPress7 ? Colors.green : Colors.white,
                                radius: 30,
                                child: Text(
                                  "Su",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: isPress7
                                          ? Colors.white
                                          : Colors.grey[700]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
