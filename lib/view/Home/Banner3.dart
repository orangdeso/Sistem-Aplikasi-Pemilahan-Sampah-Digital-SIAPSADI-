import 'package:flutter/material.dart';
import 'package:sampah_in/view/Home/home.dart';
import '../../component/text_bold.dart';
import '../../component/text_regular.dart';

class Banner3 extends StatelessWidget {
  const Banner3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF52C2C6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: ClipBanner(),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF76FAFF),
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
                  text: "Lebih Mudah",
                  fontSize: 18,
                  color: Color(0xFF76FAFF),
                ),
                SizedBox(
                  height: 10,
                ),
                
                TextReguler(
                  text: "Dengan Siapsadi",
                  fontSize: 18,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    TextReguler(
                      text: "semua ",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    TextBold(
                      text: "Mudah",
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
