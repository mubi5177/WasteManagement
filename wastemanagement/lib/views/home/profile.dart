// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wastemanagement/views/login/login.dart';
import 'package:wastemanagement/views/signup/signup.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File profileImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              child: Column(
            children: [
              Container(
                  child: Image.asset(
                "assets/images/profilePic.png",
                width: double.infinity,
                fit: BoxFit.cover,
              )),
              Text(
                "An app to connect the dots between brands, customers and waste management organizations",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[500]),
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(100.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x80000000),
                                blurRadius: 12.0,
                                offset: Offset(0.0, 5.0),
                              ),
                            ],
                            // gradient: LinearGradient(
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.bottomRight,
                            //   colors: [
                            //     Colors.green,
                            //     Colors.white,
                            //   ],
                            // )
                          ),
                          child: FlatButton(
                            clipBehavior: Clip.hardEdge,
                            splashColor: Colors.transparent,
                            disabledColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[700]),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x80000000),
                              blurRadius: 12.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                          // gradient: LinearGradient(
                          //   begin: Alignment.topLeft,
                          //   end: Alignment.bottomRight,
                          //   color:Colors.white
                          //   // [
                          //   //   Colors.green,
                          //   //   Colors.white,
                          //   // ],
                          // )
                        ),
                        child: FlatButton(
                          clipBehavior: Clip.hardEdge,
                          splashColor: Colors.transparent,
                          disabledColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            'Create account',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
