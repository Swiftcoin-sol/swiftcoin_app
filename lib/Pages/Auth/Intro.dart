import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:swiftcoin/Shared/include.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.language,
                  color: green,
                ),
                label: Text(
                  "Fr",
                  style: TextStyle(color: green),
                )),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 9),
                child: Column(
                  children: [
                    SizedBox(height: 4.h),
                    Image(
                      image: AssetImage("assets/logo.png"),
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(height: 10.55.h),
                    Text('SwiftCoin',
                        style: TextStyle(
                            fontSize: 28.50.sp,
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
                            style: TextStyle(fontSize: 18.sp, color: black)),
                        Text('in no time',
                            style: TextStyle(fontSize: 18, color: black)),
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
