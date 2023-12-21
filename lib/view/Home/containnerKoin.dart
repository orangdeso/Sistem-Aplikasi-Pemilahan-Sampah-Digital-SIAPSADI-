import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sampah_in/component/text_medium.dart';

import '../../component/text_regular.dart';
import '../../component/text_semiBold.dart';
import '../../component/utils.dart';

class ContainnerKoin extends StatefulWidget {
  const ContainnerKoin({super.key});

  @override
  State<ContainnerKoin> createState() => _ContainnerKoinState();
}

class _ContainnerKoinState extends State<ContainnerKoin> {
  String tanggalOtomatis = DateFormat('dd MMMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Warna bayangan (shadow)
                spreadRadius:
                    1, // Sebaran bayangan (semakin besar nilainya, semakin lebar bayangannya)
                blurRadius: 5, // Ketajaman bayangan
                offset:
                    Offset(0, 3), // Perpindahan bayangan dalam sumbu X dan Y
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextReguler(
                  text: "Koin Sampahmu",
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
                SizedBox(
                  height: 10,
                ),
                TextSemiBold(
                  text: "100 Koin",
                  fontSize: 24,
                  color: Colors.grey.shade800,
                ),
                SizedBox(
                  height: 20,
                ),
                TextReguler(
                  text: "Sampah Dijemput",
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextSemiBold(
                          text: "5",
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                        TextReguler(
                          text: " /Kg",
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextSemiBold(
                          text: "5",
                          fontSize: 20,
                          color: Colors.grey.shade800,
                        ),
                        TextReguler(
                          text: " /pcs",
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color1,
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 20,
                          ),
                        ),
                        child: TextSemiBold(
                          text: "Tukar Koin",
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: FractionalOffset.centerRight,
          child: Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFFFAB317),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: TextMedium(
              text: "${tanggalOtomatis}",
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
