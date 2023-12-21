import 'package:flutter/material.dart';
import 'package:sampah_in/component/text_semiBold.dart';
import 'package:sampah_in/view/Home/banner_awal.dart';
import 'package:sampah_in/view/Home/containnerKoin.dart';
import 'package:sampah_in/view/Home/grettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF16DF7E),
        elevation: 0,
        title: Text(
          "SIAPSADI",
          style: TextStyle(
            fontFamily: 'Outfit-SemiBold',
            fontSize: 18,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
        // RichText(
        //   text: TextSpan(
        //     text: "Hai, ",
        //     style: TextStyle(
        //       fontFamily: 'Outfit-Regular',
        //       fontSize: 18,
        //       letterSpacing: 1,
        //     ),
        //     children: [
        //       TextSpan(
        //         text: "SIAPSADI",
        //         style: TextStyle(
        //           fontFamily: 'Outfit-SemiBold',
        //           fontSize: 18,
        //           letterSpacing: 1,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 230,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.amber,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF16DF7E),
                  Color(0xFF52C2C6),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ListView(
              children: [
                Grettings(),
                SizedBox(
                  height: 22,
                ),
                ContainnerKoin(),
                SizedBox(
                  height: 30,
                ),
                BannerAwal(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
