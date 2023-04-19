import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swiftcoin/Shared/consant.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  _ValidationState createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
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
                      Text('Enter the validation code',
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                      Text('number',
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                      SizedBox(height: 25),
                      Form(
                          child: Row(
                        children: [
                          // Third Box ...........................
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(91, 158, 158, 158),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  )),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(width: 7),
// Second Box ...........................
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(91, 158, 158, 158),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  )),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(width: 7),

// Third Box ...........................
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(91, 158, 158, 158),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  )),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(width: 7),

// Fourth Box ...........................
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(91, 158, 158, 158),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(0, 158, 158, 158)),
                                  )),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      )),
                      SizedBox(height: 50),
                      SizedBox(
                        height: 45,
                        width: 160,
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Next",
                              style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 60, 173, 193)),
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
