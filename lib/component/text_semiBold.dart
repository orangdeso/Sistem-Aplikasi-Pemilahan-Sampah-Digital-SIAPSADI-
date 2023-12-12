import 'package:flutter/material.dart';

class TextSemiBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  TextSemiBold({
    required this.text,
    required this.fontSize,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Outfit-SemiBold',
        fontSize: fontSize,
      ),
    );
  }
}
