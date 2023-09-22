import 'package:flutter/material.dart';
import 'package:swiftcoin/Shared/include.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color color;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.icon,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      width: 50.w,
      child: MaterialButton(
        textColor: white,
        elevation: 0,
        color: color,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
