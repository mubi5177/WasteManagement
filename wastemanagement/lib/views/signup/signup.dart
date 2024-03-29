import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'package:provider/provider.dart';
import 'package:wastemanagement/views/controller/controllers.dart';
import 'package:wastemanagement/views/login/login.dart';
import 'package:wastemanagement/views/signup/verifyemail.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _key = GlobalKey<FormState>();

  bool showSpinner = false;
  // final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "First Name",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(13)),
                      alignment: Alignment.center,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "First Name cannot be empty";
                            }
                            return null;
                          },
                          controller: firstNameController,
                          decoration: InputDecoration(
                            hintText: 'Enter your first name',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(13)),
                      alignment: Alignment.center,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Last Name cannot be empty";
                            }
                            return null;
                          },
                          controller: lastNameController,
                          decoration: InputDecoration(
                            hintText: 'Enter your last name',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(13)),
                      alignment: Alignment.center,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Email is required";
                            }
                            return null;
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(13)),
                      alignment: Alignment.center,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Password is required";
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text.rich(
                      TextSpan(
                        text: '', // default text style
                        children: [
                          TextSpan(
                              text: "By signing up,I agree to the ",
                              style: TextStyle(fontSize: 15)),
                          WidgetSpan(
                              child: InkWell(
                            onTap: () {},
                            child: Text('Term of use',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.green)),
                          )),
                          TextSpan(
                              text: " and", style: TextStyle(fontSize: 15)),
                          WidgetSpan(
                              child: InkWell(
                            onTap: () {},
                            child: Text('Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.green)),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () async {
                        final String firstName =
                            firstNameController.text.trim();
                        final String lastName = lastNameController.text.trim();
                        final String email = emailController.text.trim();
                        final String password = passwordController.text.trim();

                        // // setState(() {
                        // //   showSpinner = true;
                        // // });

                        // if (email.isEmpty) {
                        //   print("Email is Empty");
                        // } else {
                        //   if (password.isEmpty) {
                        //     print("Password is Empty");
                        //   } else {
                        //     context
                        //         .read<AuthService>()
                        //         .signUp(
                        //           firstName,
                        //           lastName,
                        //           email,
                        //           password,
                        //         )
                        //         .then((value) async {
                        //       User user = FirebaseAuth.instance.currentUser;

                        //       await FirebaseFirestore.instance
                        //           .collection("users")
                        //           .doc(user.uid)
                        //           .set({
                        //         'uid': user.uid,
                        //         'firstname': firstName,
                        //         'lastname': lastName,
                        //         'email': email,
                        //         'password': password,
                        //       });
                        //     });
                        //   }
                        // }
                        //                Navigator.push(
                        // context,
                        // MaterialPageRoute(builder: (context) => SuccessScreen()),
                        // );
                        // if (_key.currentState.validate()) {
                        //   User user = FirebaseAuth.instance.currentUser;
                        //   setState(() {
                        //     showSpinner = true;
                        //   });
                        //   try {
                        //     await _auth
                        //         .createUserWithEmailAndPassword(
                        //             email: email, password: password)
                        //         .then((value) async {
                        //       await FirebaseFirestore.instance
                        //           .collection("users")
                        //           .doc(user.uid)
                        //           .set({
                        //         'uid': user.uid,
                        //         'firstname': firstName,
                        //         'lastname': lastName,
                        //         'email': email,
                        //         // 'password': password,
                        //       });
                        //     });
                        //     if (user != null) {
                        //       showModalBottomSheet(
                        //         context: context,
                        //         isScrollControlled: true,
                        //         backgroundColor: Colors.transparent,
                        //         builder: (context) {
                        //           return VerifyEmail();
                        //         },
                        //       );
                        //     }

                        //     setState(() {
                        //       showSpinner = false;
                        //     });
                        //   } on FirebaseAuthException catch (e) {
                        //     setState(() {
                        //       showSpinner = false;
                        //     });
                        //     _showDialog("${e.message}");
                        //     print(e.message);
                        //   }
                        // }
                      },
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        height: 60,
                        width: 280,
                        child: Text("Sign Up"),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text.rich(
                      TextSpan(
                        text: '', // default text style
                        children: [
                          TextSpan(
                              text: "Already have an account?",
                              style: TextStyle(fontSize: 15)),
                          WidgetSpan(
                              child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text('Sign in',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.green)),
                          )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(String msg) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error!"),
          content: new Text("$msg"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
