import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeSet extends StatefulWidget {
  const CodeSet({Key? key}) : super(key: key);

  @override
  _CodeSetState createState() => _CodeSetState();
}

class _CodeSetState extends State<CodeSet> {
  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Color.fromARGB(255, 60, 173, 193),
          ),
          title: Text('SwiftCoin',
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 60, 173, 193))),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Set your account PINCODE (4 digits numbers)',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      Text('Your PINCODE will be set as "0000" by default',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      Text('if the feild is empty',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(height: 15),
                      Form(
                          child: Row(
                        children: [
                          SizedBox(
                            height: 68,
                            width: 164,
                            child: TextFormField(
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 60, 173, 193)),
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(4),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 45,
                        width: 160,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text("Set Code",
                              style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 60, 173, 193)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Do it later",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 173, 193),
                                  decoration: TextDecoration.underline)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 400,
              width: widthMedia,
              // height: 200,
              child: Image(
                image: AssetImage("assets/curve.png"),
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }
}
