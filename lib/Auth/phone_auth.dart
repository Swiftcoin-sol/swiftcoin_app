import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(22),
                child: Text('SwiftCoin',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 60, 173, 193))),
              ),
            ],
          ),
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Enter Your Phone Number',
                      style: TextStyle(fontSize: 24, color: Colors.grey)),
                  SizedBox(height: 13),
                  Text('a validation code will be send',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                  Text('to this number',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 80,
                child: IntlPhoneField(
                  decoration: const InputDecoration(
                    counter: Offstage(),
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  showDropdownIcon: true,
                  dropdownIconPosition: IconPosition.trailing,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
