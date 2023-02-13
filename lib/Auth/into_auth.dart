import 'package:flutter/material.dart';

class IntoAuth extends StatefulWidget {
  const IntoAuth({Key? key}) : super(key: key);

  @override
  _IntoAuthState createState() => _IntoAuthState();
}

class _IntoAuthState extends State<IntoAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 170, 0, 9),
                child: Text('SwiftCoin',
                    style: TextStyle(
                        fontSize: 45,
                        color: Color.fromARGB(255, 60, 173, 193))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Make secure transactions',
                      style: TextStyle(fontSize: 18)),
                  Text('in no time', style: TextStyle(fontSize: 18)),
                ],
              )
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Let's get started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 60, 173, 193)),
              )
            ],
          ),
          SizedBox(height: 174.2),
          Image.asset("assets/curve.png")
        ],
      )),
    );
  }
}
