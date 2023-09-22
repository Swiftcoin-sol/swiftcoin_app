import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swiftcoin/Shared/consant.dart';
import 'package:swiftcoin/Shared/include.dart';

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
          leading: BackButton(
            color: Color.fromARGB(255, 60, 173, 193),
          ),
          title: Text('SwiftCoin',
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 60, 173, 193))),
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
        body: SingleChildScrollView(
          // physics: FixedExtentScrollPhysics(),
          child: Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Text('Enter the validation code',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: black)),
                                Text('number',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: black)),
                                Text(
                                    'The validation will be send to your phone number',
                                    style: TextStyle(
                                        fontSize: 16.sp, color: black)),
                                SizedBox(height: 25),
                                Form(
                                    child: Row(
                                  children: [
                                    // Third Box ...........................
                                    SizedBox(
                                      height: 6.h,
                                      width: 14.w,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,

                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        // style: Theme.of(context).textTheme.headlineLarge,
                                        textAlign: TextAlign.center,
                                        decoration: otptextInput,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 1.w),

                                    SizedBox(
                                      height: 6.h,
                                      width: 14.w,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,

                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        // style: Theme.of(context).textTheme.headlineLarge,
                                        textAlign: TextAlign.center,
                                        decoration: otptextInput,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 1.w),

                                    SizedBox(
                                      height: 6.h,
                                      width: 14.w,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,

                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        // style: Theme.of(context).textTheme.headlineLarge,
                                        textAlign: TextAlign.center,
                                        decoration: otptextInput,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 1.w),

                                    // Second Box ...........................
                                    SizedBox(
                                      height: 6.h,
                                      width: 14.w,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,

                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        // style: Theme.of(context).textTheme.headlineLarge,
                                        textAlign: TextAlign.center,

                                        decoration: otptextInput,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 1.w),

                                    // Third Box ...........................
                                    SizedBox(
                                      height: 6.h,
                                      width: 14.w,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,

                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        // style: Theme.of(context).textTheme.headlineLarge,
                                        textAlign: TextAlign.center,
                                        decoration: otptextInput,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 1.w),

                                    // Fourth Box ...........................
                                    SizedBox(
                                      height: 6.h,
                                      width: 14.w,
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            FocusScope.of(context).nextFocus();
                                          }
                                        },
                                        // style: Theme.of(context).textTheme.headlineLarge,
                                        textAlign: TextAlign.center,
                                        decoration: otptextInput,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(1),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                                SizedBox(height: 5.h),
                                SizedBox(
                                  height: 45,
                                  width: 160,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/codeSet');
                                    },
                                    child: Text("Next",
                                        style: TextStyle(color: Colors.white)),
                                    style: TextButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 60, 173, 193)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23.h)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/curve.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
