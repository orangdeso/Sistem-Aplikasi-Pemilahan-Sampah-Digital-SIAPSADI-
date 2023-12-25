import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sampah_in/component/text_regular.dart';
import 'package:sampah_in/component/utils.dart';
import 'package:sampah_in/view/Home/Banner1.dart';
import 'package:sampah_in/view/Home/Banner2.dart';
import 'package:sampah_in/view/Home/Banner3.dart';
import 'package:sampah_in/view/Home/CustomeCard.dart';
import 'package:sampah_in/view/Home/banner_awal.dart';
import 'package:sampah_in/view/Home/cardIcon.dart';
import 'package:sampah_in/view/Home/containnerKoin.dart';
import 'package:sampah_in/view/Home/grettings.dart';

import '../../component/text_semiBold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imgList = [
    Banner1(),
    Banner2(),
    Banner3(),
  ];

  // final ListBannerAplikasi imgList = ListBannerAplikasi();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
                  height: 20,
                ),
                BannerAwal(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.3),
                    //     spreadRadius: 1,
                    //     blurRadius: 5,
                    //     offset: Offset(0, 3),
                    //   ),
                    // ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CardIcon(
                            imagePath: 'assets/images/rubbish.png',
                            text: "Jemput",
                          ),
                          CardIcon(
                            imagePath: 'assets/images/truck.png',
                            text: "Antar",
                          ),
                          CardIcon(
                            imagePath: 'assets/images/buildings.png',
                            text: "Perusahaan",
                          ),
                          CardIcon(
                            imagePath: 'assets/images/discount.png',
                            text: "Promo",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          CardIcon(
                            imagePath: 'assets/images/pulsa.png',
                            text: "Pulsa",
                          ),
                          CardIcon(
                            imagePath: 'assets/images/paketan.png',
                            text: "Paket data",
                          ),
                          CardIcon(
                            imagePath: 'assets/images/listrik.png',
                            text: "Listrik",
                          ),
                          CardIcon(
                            imagePath: 'assets/images/lainnya.png',
                            text: "Lihat semua",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: CarouselSlider(
                          items: imgList,
                          options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.3,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            reverse: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map(
                          (entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: 6.0,
                                height: 6.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : color1)
                                      .withOpacity(
                                          _current == entry.key ? 0.9 : 0.4),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextSemiBold(
                              text: "Mengenal SIAPSADI",
                              fontSize: 20,
                              color: Colors.grey.shade800,
                            ),
                            TextReguler(
                              text: "Kenali lebih dalam tentang SIAPSADI",
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                CustomeCard(
                                  imagePath: 'assets/images/fitur.png',
                                  text: "Mengenal beberapa fitur dari SIAPSADI",
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CustomeCard(
                                  imagePath: 'assets/images/tukar.png',
                                  text:
                                      "Jual sampahmu dan hasilkan banyak koin",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextSemiBold(
                              text: "Jenis - jenis sampah",
                              fontSize: 20,
                              color: Colors.grey.shade800,
                            ),
                            TextReguler(
                              text: "Berbagai jenis sampah yang didaur ulang",
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                CustomeCard(
                                  imagePath: 'assets/images/anorganik.png',
                                  text: "Sampah Anorganik",
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CustomeCard(
                                  imagePath: 'assets/images/organik.png',
                                  text: "Sampah Organik",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ClipBanner extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();
    path.moveTo(width, 0);
    path.quadraticBezierTo(width / 4, height * 0.5, width, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
