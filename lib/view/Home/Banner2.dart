import 'package:flutter/material.dart';
import 'package:sampah_in/view/Home/home.dart';
import '../../component/text_bold.dart';
import '../../component/text_regular.dart';

class Banner2 extends StatelessWidget {
  const Banner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFAB317),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: ClipBanner(),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFD579),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Align(
              alignment: FractionalOffset.centerRight,
              child: Image.asset(
                "assets/images/3dPeople.png",
                fit: BoxFit.cover,
                height: double.maxFinite,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 14,
                ),
                TextBold(
                  text: "Jaga Lingkungan",
                  fontSize: 18,
                  color: Color(0xFFFFD579),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextBold(
                      text: "Ayo ",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    TextReguler(
                      text: "jaga lingkungan",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextReguler(
                      text: "dengan ",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    TextBold(
                      text: "SIAPSADI",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
