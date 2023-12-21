import 'package:flutter/material.dart';
import 'package:sampah_in/view/Home/home.dart';
import 'package:sampah_in/view/Login/login_page.dart';
import 'package:sampah_in/view/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sampah.In',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
