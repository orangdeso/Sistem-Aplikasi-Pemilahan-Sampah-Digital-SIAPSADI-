import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;

  TextBody({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade600,
        fontFamily: 'Outfit-Light',
        fontSize: 20,
      ),
    );
  }
}
