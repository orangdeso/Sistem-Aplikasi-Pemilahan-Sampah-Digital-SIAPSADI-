import 'package:flutter/material.dart';

import '../../component/text_semiBold.dart';

class BannerAwal extends StatelessWidget {
  const BannerAwal({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 280 / 113,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        //padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Color(0xFF16DF7E),
              Color(0xFF52C2C6),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: FractionalOffset.centerRight,
              child: Image.asset(
                "assets/images/titik.png",
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: FractionalOffset.centerRight,
                child: Image.asset(
                  "assets/images/backround_banner.png",
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: 250,
              child: Column(
                children: [
                  TextSemiBold(
                    text:
                        "Tabungan Sampah.in Bisa Ditukarkan Dengan Berbagai Macam Produk",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextSemiBold(
                        text: "Menjaga lingkungan bersih",
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextSemiBold(
                        text: "Bermacam Produk",
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      TextSemiBold(
                        text: "Lebih Mudah",
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
