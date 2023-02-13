import 'package:flutter/material.dart';
import 'package:swiftcoin/Auth/into_auth.dart';
import 'package:swiftcoin/Auth/phone_auth.dart';

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
      initialRoute: '/phone',
      routes: {
        '/intro': (context) => IntoAuth(),
        '/phone': (context) => PhoneAuth()
      },
    );
  }
}
