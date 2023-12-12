import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;

  TextTitle({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade800,
        fontFamily: 'Outfit-Bold',
        fontSize: 30,
      ),
    );
  }
}
