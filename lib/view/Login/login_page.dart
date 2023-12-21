import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sampah_in/component/text_medium.dart';
import 'package:sampah_in/component/text_regular.dart';
import 'package:sampah_in/component/text_semiBold.dart';
import 'package:sampah_in/component/utils.dart';
import 'package:sampah_in/view/Login/InputFieldEmail.dart';
import 'package:sampah_in/view/Login/InputFieldPassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.grey.shade800,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              TextSemiBold(
                text: "Selamat Datang !",
                fontSize: 22,
                color: Colors.grey.shade800,
              ),
              SizedBox(
                height: 6,
              ),
              TextReguler(
                text: "Login untuk masuk kedalam aplikasi Sampah.in",
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
              SizedBox(
                height: 40,
              ),
              TextMedium(
                text: "Email",
                fontSize: 18,
                color: Colors.grey.shade800,
              ),
              InputFieldEmail(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan email Anda';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                hintText: "example@gmail.com",
                icon: Icons.email_rounded,
              ),
              SizedBox(
                height: 20,
              ),
              TextMedium(
                text: "Password",
                fontSize: 18,
                color: Colors.grey.shade800,
              ),
              InputFieldPassword(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan password Anda';
                  } else if (value.length < 6) {
                    return 'Password kurang dari 6';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                hintText: "******",
                icon: Icons.lock_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                splashColor: Colors.grey,
                child: Material(
                  color: Colors.transparent,
                  child: TextMedium(
                    text: "Lupa Password ?",
                    fontSize: 16,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
