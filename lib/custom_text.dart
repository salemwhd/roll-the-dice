import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text, {Key? key}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(fontSize: 28, color: Colors.lightGreenAccent),
    );
  }
}
