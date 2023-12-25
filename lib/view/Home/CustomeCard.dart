import 'package:flutter/material.dart';
import 'package:sampah_in/component/text_regular.dart';

class CustomeCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomeCard({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Warna bayangan (shadow)
              spreadRadius:
                  1, // Sebaran bayangan (semakin besar nilainya, semakin lebar bayangannya)
              blurRadius: 5, // Ketajaman bayangan
              offset: Offset(0, 3), // Perpindahan bayangan dalam sumbu X dan Y
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              // width: 200,
              // height: 200,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextReguler(
                text: text,
                fontSize: 16,
                color: Colors.grey.shade800,
              ),
            )
          ],
        ),
      ),
    );
  }
}
