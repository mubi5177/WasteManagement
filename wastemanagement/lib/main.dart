import 'package:flutter/material.dart';
import 'package:wastemanagement/views/shops/product.dart';
import 'package:wastemanagement/views/splash/splash.dart';

import 'views/CustomerChatAndCustomize/customize.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash(),
    );
  }
}
