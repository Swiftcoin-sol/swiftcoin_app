import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swiftcoin/Shared/include.dart';
import 'package:swiftcoin/Shared/consant.dart';

class InputTextFeilds extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final Color borderColor;
  final TextEditingController textcontoller;

  const InputTextFeilds(
      {Key? key,
      required this.hintText,
      required this.borderColor,
      required this.textcontoller,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46.w,
      child: TextFormField(
        style: TextStyle(color: Colors.grey),
        readOnly: true,
        decoration: textInputForm,
        controller: textcontoller,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
