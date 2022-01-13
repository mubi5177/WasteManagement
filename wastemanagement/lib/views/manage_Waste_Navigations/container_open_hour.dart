// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/upload_images.dart';

class ContainerOpenHours extends StatefulWidget {
  @override
  _ContainerOpenHoursState createState() => _ContainerOpenHoursState();
}

class _ContainerOpenHoursState extends State<ContainerOpenHours> {
  DateTime _dateTime;
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
                      MaterialPageRoute(builder: (context) => UploadImages()),
                    );
                  },
                  child: Text(
                    'Confirm open hours',
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
            "Container open hours",
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
                    "Select timing",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, top: 20),
                  child: Text(
                    "From",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                time(),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0, top: 20),
                  child: Text(
                    "To",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                time()
              ],
            ),
          ),
        ));
  }

  Widget time() {
    return TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(fontSize: 24, color: Colors.green),
      highlightedTextStyle: TextStyle(fontSize: 24, color: Colors.black),
      spacing: 20,
      itemHeight: 40,
      isForce2Digits: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}
