// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wastemanagement/views/shops/shop.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/container_open_days.dart';

import '../../const.dart';

class CheckForCreation extends StatefulWidget {
  @override
  _CheckForCreationState createState() => _CheckForCreationState();
}

class _CheckForCreationState extends State<CheckForCreation> {
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
                          builder: (context) => ContainerOpenDays()),
                    );
                  },
                  child: Text(
                    'I agree',
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
            "Checks for creation",
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
                    "Read, don't just agree 👀",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListTile(
                      title: Text(
                        'I shall ensure that the drop-off unit is accessible to the public',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(""),
                      isThreeLine: true,
                      leading: Image.asset("assets/icons/walk.png")),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListTile(
                      title: Text(
                        'I shall ask for pickup only after a minimum of 10 packages ares collected',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(""),
                      isThreeLine: true,
                      leading: Image.asset("assets/icons/box.png")),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListTile(
                      title: Text(
                        'I have authority to set up the collection unit in the location',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(""),
                      isThreeLine: true,
                      leading: Image.asset("assets/icons/yes.png")),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'More the quantity of waste you will collect more the points you will get',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
