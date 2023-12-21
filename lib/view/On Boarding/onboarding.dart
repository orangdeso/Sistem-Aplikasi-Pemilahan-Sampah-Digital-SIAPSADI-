import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sampah_in/view/Home/home.dart';
import 'package:sampah_in/view/Login/login_page.dart';
import 'package:sampah_in/view/On%20Boarding/textBody.dart';
import 'package:sampah_in/view/On%20Boarding/textTitle.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/images/recycle_bin.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.all(16),
      pageColor: Colors.white,
      //imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            titleWidget: TextTitle(
              text: 'Jaga Lingkungan Bersama',
            ),
            bodyWidget: TextBody(
              text:
                  'Mari berkontribusi bersama menjaga lingkungan melalui fitur dan layanan yang tersedia di aplikasi. Yuk mulai jual sampahmu di Sampah.IN',
            ),
            image: Image.asset('assets/images/Onboarding1.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: TextTitle(
              text: 'Mudah Menjual Sampah',
            ),
            bodyWidget: TextBody(
              text:
                  'Sampah daur ulang kini makin mudah dijual. Cukup jual sampahmu pada aplikasi. Sampahmu akan dijemput atau bisa diantar dan dapatkan reward banyak.',
            ),
            image: Image.asset('assets/images/Onboarding2.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: TextTitle(
              text: 'Tabung Pakai Sampah Koin',
            ),
            bodyWidget: TextBody(
              text:
                  'Tabung hasil jual sampahmu dengan Sampah Koin dan tukarkan koinmu dengan berbagai produk digital.',
            ),
            image: Image.asset('assets/images/Onboarding3.png'),
            decoration: pageDecoration,
            // footer: ElevatedButton(
            //   onPressed: () {
            //     //introKey.currentState?.animateScroll(0);
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: color1,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: TextSemiBold(
            //     text: 'Mulai',
            //     color: Colors.white,
            //     fontSize: 18,
            //   ),
            // ),
          ),
        ],
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginPage();
              },
            ),
          );
        },
        showSkipButton: true,
        showNextButton: true,
        showDoneButton: true,
        showBackButton: false,
        back: Icon(Icons.arrow_back),
        skip: Text("Skip"),
        next: Icon(Icons.arrow_forward),
        done: Text("Done"),
        dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
