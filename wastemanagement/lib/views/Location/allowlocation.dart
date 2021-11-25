// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:wastemanagement/views/home/homePage.dart';

import '../../const.dart';

class AllowLocation extends StatefulWidget {
  @override
  _AllowLocationState createState() => _AllowLocationState();
}

class _AllowLocationState extends State<AllowLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(134, 67, 28, 1),
      body: Container(
        height: height,
        width: width,
        color: Colors.transparent,
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Use your location",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          content: Container(
            height: 230,
            child: Column(
              children: [
                SizedBox.square(
                    dimension: 50,
                    child: Image.asset("assets/icons/User location.png")),
                Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 20),
                    child: Text(
                      "Give location access so we can check for available offers in your area",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[500],
                        fontFamily: 'PrefaceSans',
                      ),
                    )

                    // Image.asset("assets/icons/access.png"),
                    ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(203, 101, 43, 1),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width / 2, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Location().getLocation().then((value) {
                            userLatitude = value.latitude;
                            userLongitude = value.longitude;
                            print("Latitude: $userLatitude");
                            print("Longitude: $userLongitude");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                            // if (isFirstTime) {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => LoadingScreen(),
                            //     ),
                            //   );
                            // } else {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => HomePage(),
                            //     ),
                            //   );
                            // }
                          });
                        },
                        child: Text(
                          'Allow',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'Skip',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(203, 101, 43, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
