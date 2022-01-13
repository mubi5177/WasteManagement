// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/shops/shop.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/check_for_creation.dart';

import '../../const.dart';

class Program extends StatefulWidget {
  @override
  _ProgramState createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
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
                          builder: (context) => CheckForCreation()),
                    );
                  },
                  child: Text(
                    'Schedule drop-off',
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
            "Program",
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ProgramSlider(
                          "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ProgramSlider(
                          "https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Plastic Recycling",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 5),
                        child: Text(
                          "Waste cleaning management system (WCMS)",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 20),
                        child: Text(
                          "About the program",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 8),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 20),
                        child: Text(
                          "About the organization",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0, top: 8),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
