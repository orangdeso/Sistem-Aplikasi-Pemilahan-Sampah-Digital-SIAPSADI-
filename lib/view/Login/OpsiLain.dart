import 'package:flutter/material.dart';

class OpsiLain extends StatelessWidget {
  final String imagePath; // Tambahkan parameter imagePath

  const OpsiLain({Key? key, required this.imagePath,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
