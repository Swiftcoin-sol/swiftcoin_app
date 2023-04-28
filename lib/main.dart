import 'package:flutter/material.dart';
import 'package:swiftcoin/Pages/Auth/Intro.dart';
import 'package:swiftcoin/Pages/Auth/phone_auth.dart';
import 'package:swiftcoin/Pages/Auth/Validation.dart';
import 'package:swiftcoin/Pages/Auth/codeSet.dart';
import 'package:swiftcoin/Pages/Dashboard/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/intro': (context) => Intro(),
        '/phone': (context) => PhoneAuth(),
        '/validation': (context) => Validation(),
        '/codeSet': (context) => CodeSet(),
        '/home': (context) => Home()
      },
      home: Intro(),
    );
  }
}
