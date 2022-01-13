// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:badges/badges.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:wastemanagement/views/manage_Waste_Navigations/verify.dart';

class UploadImages extends StatefulWidget {
  @override
  _UploadImagesState createState() => _UploadImagesState();
}

class _UploadImagesState extends State<UploadImages> {
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
                      MaterialPageRoute(builder: (context) => Verify()),
                    );
                  },
                  child: Text(
                    'Create container',
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
            "Image",
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
                    "Make it easier for the drop-off folks to spot your container 😃",
                    style: TextStyle(
                        color: Colors.grey[750],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                _offerImages.isEmpty
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 48.0),
                            child: Container(
                              width: 75,
                              height: 75,
                              child: Image(
                                color: Colors.green,
                                image:
                                    AssetImage('assets/icons/cameraicon.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            height: 200.0,
                            width: MediaQuery.of(context).size.width,
                            child: Carousel(
                              boxFit: BoxFit.cover,
                              autoplay: true,
                              animationCurve: Curves.fastOutSlowIn,
                              animationDuration: Duration(milliseconds: 1000),
                              autoplayDuration: Duration(seconds: 10),
                              dotSize: 6.0,
                              dotIncreasedColor: Colors.white,
                              dotBgColor: Colors.transparent,
                              dotPosition: DotPosition.bottomCenter,
                              dotVerticalPadding: 5.0,
                              showIndicator: true,
                              indicatorBgPadding: 5.0,
                              images: buildPhotos(),
                            ),
                          ),
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // clipBehavior: Clip.hardEdge,
                        // color: Colors.green,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            FilePicker.platform
                                .pickFiles(
                                    allowMultiple: true, type: FileType.image)
                                .then((value) {
                              for (var element in value.files) {
                                setState(() {
                                  _offerImages
                                      .removeWhere((p) => p == element.path);
                                });
                                setState(() {
                                  _offerImages.add(element.path);
                                });
                              }
                            });
                          },
                          icon: Icon(Icons.add),
                          label: Text(
                            'Upload pictures',
                            style: TextStyle(
                              fontFamily: 'PrefaceSans',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.transparent,
                            onPrimary: Colors.green,
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            side: BorderSide(
                              color: Colors.green,
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

  List<Widget> buildPhotos() {
    List<Widget> x = [];
    for (var i = 0; i < _offerImages.length; i++) {
      x.add(
        Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Badge(
                badgeContent: InkWell(
                  onTap: () {
                    setState(() {
                      _offerImages.removeAt(i);
                    });
                  },
                  child: Text(
                    "✕",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                badgeColor: Color.fromRGBO(200, 101, 36, 1),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image(
                    fit: BoxFit.cover,
                    image: FileImage(File(_offerImages[i])),
                  ),
                ),
              ),
            )),
      );
    }
    return x;
  }
}
