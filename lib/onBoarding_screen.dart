import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zohoapp/constants.dart';
import 'package:zohoapp/home_Screen.dart';
///Onbaording screen with few things about Zoho,button to the main test app.
class OnBoardingscreen extends StatefulWidget {
  ///Onbaording.
  const OnBoardingscreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingscreen> createState() => _OnBoardingscreenState();
}
///onBoardingscreen.
class _OnBoardingscreenState extends State<OnBoardingscreen> {
  List<String> images = ['0', '1', '2'];

  String img = 'demo';
  String text = 'What we do';
  double imageSize =135;
  double logoImage=200;
  double height =40;
  double width=200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff16213E),
        title: Image.asset(
          'assets/logo.png',
          height: imageSize,
          width: imageSize,
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff141824), Color(0xff112139)],),),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: logoImage,
                    width: logoImage,
                    child: Image.asset('assets/$img.png'),),
                Text(
                  text,
                  style: kheading,
                ),
                GestureDetector(
                  onTap: () {
                    final Random random = Random();
                    final int randomNumber = random.nextInt(3);
                    if (kDebugMode) {
                      print(randomNumber);
                    }
                    setState(() {
                      img = images[randomNumber];
                      if (randomNumber == 0) {
                        text = "HealthCare";
                      } else if (randomNumber == 1) {
                        text = "Robots";
                      } else if (randomNumber == 2) {
                        text = "Productivity";
                      }
                    });
                  },
                  child: Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Color(0xfff05315),
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                    ),
                    child: const Text('our Expertise',
                        style: kbuttontext, textAlign: TextAlign.center,),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<MaterialPageRoute>(
                          builder: (context) => const HomeScreen(),),
                    );
                  },
                  child: Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFA41B),
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                    ),
                    child: const Text(
                      "Color App",
                      style: kbuttontext,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],),
        ),
      ),
    );
  }
}
