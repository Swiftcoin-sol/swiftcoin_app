import 'package:flutter/material.dart';
import 'package:swiftcoin/Shared/include.dart';

const textInputForm = InputDecoration(
  fillColor: Colors.transparent,
  counterText: "",
  filled: true,
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 60, 173, 193)),
  ),
);

const otptextInput = InputDecoration(
    fillColor: Color.fromARGB(91, 158, 158, 158),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(0, 158, 158, 158)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(0, 158, 158, 158)),
    ));
