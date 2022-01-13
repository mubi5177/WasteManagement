// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/updating.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  List<String> _offerImages = [];
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
                      MaterialPageRoute(builder: (context) => Updating()),
                    );
                  },
                  child: Text(
                    'Confirm container',
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
            "Verify",
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
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Check container details before proceeding 😃",
                    style: TextStyle(
                        color: Colors.grey[750],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.lock_clock),
                      label: Text(
                        "Open Hours",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Text(
                    " 9:00 - 21:00",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.location_on),
                      label: Text(
                        "Layers Bakeshop, Block R Block G Phase 2 Johar Town, Lahore",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 12),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag),
                      label: Text(
                        "Plastic pouches only",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
