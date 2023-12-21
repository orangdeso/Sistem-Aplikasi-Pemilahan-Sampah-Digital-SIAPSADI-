import 'package:flutter/material.dart';

class TextBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  TextBold({
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
        fontFamily: 'Outfit-Bold',
        fontSize: fontSize,
      ),
    );
  }
}
