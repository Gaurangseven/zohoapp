import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zohoapp/constants.dart';

///Home Screen.
class HomeScreen extends StatefulWidget {
  ///Home Screen with Color functionality
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color mainColor = const Color(0xffE9E8E8);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            final Color randColor = Color.fromRGBO(
              math.Random().nextInt(255),
              math.Random().nextInt(255),
              math.Random().nextInt(255),
              math.Random().nextDouble(),
            );
            if (kDebugMode) {
              print(randColor);
            }
            setState(() {
              mainColor = randColor;
            });
          },
          child: ColoredBox(
            color: mainColor,
            child: const Center(
              child: Text(
                'Hey There',
                style: ktext,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
