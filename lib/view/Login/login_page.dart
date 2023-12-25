import 'package:flutter/material.dart';
import 'package:sampah_in/component/text_medium.dart';
import 'package:sampah_in/component/text_regular.dart';
import 'package:sampah_in/component/text_semiBold.dart';
import 'package:sampah_in/component/utils.dart';
import 'package:sampah_in/view/Home/home.dart';
import 'package:sampah_in/view/Login/AtauDivider.dart';
import 'package:sampah_in/view/Login/InputFieldEmail.dart';
import 'package:sampah_in/view/Login/InputFieldPassword.dart';
import 'package:sampah_in/view/Login/OpsiLain.dart';
import 'package:sampah_in/view/On%20Boarding/onboarding.dart';

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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (builder) {
                  return const OnBoarding();
                },
              ),
            );
          },
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
                  return null;
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
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                hintText: "******",
                icon: Icons.lock_rounded,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: FractionalOffset.centerRight,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: TextMedium(
                        text: "Lupa Password ?",
                        fontSize: 16,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (builder) {
                        return HomePage();
                      },
                    ),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(color1),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
                child: TextSemiBold(
                  text: "Login",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AtauDivider(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OpsiLain(
                    imagePath: 'assets/images/facebook.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OpsiLain(
                    imagePath: 'assets/images/google.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OpsiLain(
                    imagePath: 'assets/images/twitter.png',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
