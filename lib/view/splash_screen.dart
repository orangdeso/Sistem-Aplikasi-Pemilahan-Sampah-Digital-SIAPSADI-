import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sampah_in/component/utils.dart';
import 'package:sampah_in/view/On%20Boarding/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (builder) {
            return const OnBoarding();
          },
        ),
      );
    });

    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/recycle_bin.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                "SIAPSADI",
                style: TextStyle(
                  fontFamily: 'Outfit-Bold',
                  fontSize: 22,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Sistem Aplikasi Pemilahan Sampah Digital",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit-Light',
                  fontSize: 16,
                  letterSpacing: 3,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
