// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'package:provider/provider.dart';
import 'package:wastemanagement/views/controller/controllers.dart';
import 'package:wastemanagement/views/signup/signup.dart';
import 'package:wastemanagement/views/signup/success.dart';

import 'forgotPassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    height: 20,
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Sign in to your account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
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
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Email is required";
                            }
                            return null;
                          },
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
                          controller: passwordController,
                          obscureText: true,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Password is required";
                            }
                            return null;
                          },
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()),
                            );
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () async {
                        final String email = emailController.text.trim();
                        final String password = passwordController.text.trim();

                        // context.read<AuthService>().login(
                        //   email,
                        //   password,
                        // );
                        //             Navigator.push(
                        // context,
                        // MaterialPageRoute(builder: (context) => SuccessScreen()),
                        // );

                        // if (_key.currentState.validate()) {
                        //   setState(() {
                        //     showSpinner = true;
                        //   });
                        //   try {
                        //     User cureentuser =
                        //         FirebaseAuth.instance.currentUser;
                        //     final user = await _auth.signInWithEmailAndPassword(
                        //         email: email, password: password);

                        //     if (user != null && cureentuser.emailVerified) {
                        //       Navigator.pushReplacement(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => SuccessScreen()));
                        //     } else {}
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
                        child: Text("Sign In"),
                      )),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text.rich(
                      TextSpan(
                        text: '', // default text style
                        children: [
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(fontSize: 15)),
                          WidgetSpan(
                              child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: Text('Sign Up',
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



// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   TextEditingController emailController = new TextEditingController();
//   TextEditingController passwordController = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("LOGIN / SIGN UP"),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 50,),
//               child: TextFormField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   hintText: "EMAIL...",
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 50,),
//               child: TextFormField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   hintText: "PASSWORD...",
//                 ),
//                 obscureText: true,
//               ),
//             ),
//             Container(
//               height: 40,
//               width: MediaQuery.of(context).size.width / 3,
//               color: Colors.blue,
//               child: FlatButton(
//                 onPressed: () {
//                   final String email = emailController.text.trim();
//                   final String password = passwordController.text.trim();

//                   if(email.isEmpty){
//                     print("Email is Empty");
//                   } else {
//                     if(password.isEmpty){
//                       print("Password is Empty");
//                     } else {
//                       context.read<AuthService>().login(
//                         email,
//                         password,
//                       );
//                     }
//                   }
//                 },
//                 child: Text("LOG IN"),
//               ),
//             ),
//             Container(
//               height: 40,
//               width: MediaQuery.of(context).size.width / 3,
//               color: Colors.red,
//               child: FlatButton(
//                 onPressed: () {
//                   final String email = emailController.text.trim();
//                   final String password = passwordController.text.trim();

//                   if(email.isEmpty){
//                     print("Email is Empty");
//                   } else {
//                     if(password.isEmpty){
//                       print("Password is Empty");
//                     } else {
//                       context.read<AuthService>().signUp(
//                         email,
//                         password,
//                       ).then((value) async {
//                         User user = FirebaseAuth.instance.currentUser;

//                         await FirebaseFirestore.instance.collection("users").doc(user.uid).set({
//                           'uid': user.uid,
//                           'email': email,
//                           'password': password,
//                         });
//                       });
//                     }
//                   }
//                 },
//                 child: Text("SIGN UP"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }