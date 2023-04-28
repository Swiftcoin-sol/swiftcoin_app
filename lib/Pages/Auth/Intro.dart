import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 9),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/logo.png"),
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 30),
                    Text('SwiftCoin',
                        style: TextStyle(
                            fontSize: 45,
                            color: Color.fromARGB(255, 60, 173, 193))),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      children: [
                        Text('Make secure transactions',
                            style: TextStyle(fontSize: 18)),
                        Text('in no time', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 65),
                    child: SizedBox(
                      height: 45,
                      width: 160,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/phone');
                        },
                        child: Text("Let's get started",
                            style: TextStyle(color: Colors.white)),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 60, 173, 193)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            // width: 300,
            // height: 200,
            child: Image(
              image: AssetImage("assets/curve.png"),
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
