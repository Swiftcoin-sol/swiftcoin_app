import 'package:flutter/material.dart';
import 'package:swiftcoin/Shared/consant.dart';
import 'package:swiftcoin/Shared/include.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  TextEditingController _phoneAuth = TextEditingController(text: "+237");
  TextEditingController _phoneAuth2 = TextEditingController(text: "");

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
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Text('Enter Your Phone Number',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: black)),
                                SizedBox(height: 1.h),
                                Text('a validation code will be send',
                                    style: TextStyle(
                                        fontSize: 18, color: blackDesc)),
                                Text('to this number',
                                    style: TextStyle(
                                        fontSize: 18, color: blackDesc)),
                                SizedBox(height: 1.h),
                                Form(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: 19.w,
                                      child: TextFormField(
                                        style: TextStyle(color: Colors.grey),
                                        readOnly: true,
                                        decoration: textInputForm,
                                        controller: _phoneAuth,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(width: 3.w),
                                    InputTextFeilds(
                                        hintText: "",
                                        borderColor: green,
                                        textcontoller: _phoneAuth2)
                                  ],
                                )),
                                SizedBox(height: 6.h),
                                PrimaryButton(
                                    text: "Next",
                                    color: green,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/validation');
                                    })
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 23.h)
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    // width: 300,
                    // height: 200,
                    child: Image(
                      image: AssetImage("assets/curve.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
