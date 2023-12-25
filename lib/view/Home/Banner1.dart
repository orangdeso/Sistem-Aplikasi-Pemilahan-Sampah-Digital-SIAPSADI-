import 'package:flutter/material.dart';
import 'package:sampah_in/view/Home/home.dart';
import '../../component/text_bold.dart';
import '../../component/text_regular.dart';
import '../../component/utils.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: ClipBanner(),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF68E4A0),
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
                  text: "SIAPSADI",
                  fontSize: 18,
                  color: Color(0xFF97FFCD),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextBold(
                      text: "Siapsadi ",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    TextReguler(
                      text: "kini hadir",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextReguler(
                      text: "di seluruh ",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    TextBold(
                      text: "Indonesia",
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
