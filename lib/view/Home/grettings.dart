import 'package:flutter/material.dart';

class Grettings extends StatefulWidget {
  const Grettings({super.key});

  @override
  State<Grettings> createState() => _GrettingsState();
}

class _GrettingsState extends State<Grettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            offset: Offset(0, 3), // Perpindahan bayangan dalam sumbu X dan Y
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/foto.jpg'),
            radius: 30,
          ),
          title: Text(
            "Ahmad Choirul",
            style: TextStyle(
              fontFamily: 'Outfit-SemiBold',
              color: Colors.grey.shade800,
              fontSize: 18,
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              "Yuk, Jual Sampahmu",
              style: TextStyle(
                fontFamily: 'Outfit-Regular',
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
