import 'dart:async';

import 'package:flutter/material.dart';
import 'package:teamup/utilities/font_styles.dart';

import 'loginscreen .dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const Loginscreen()),
          (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'images/up.png',
              width: size.width * 0.5,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Streamline Processes',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Team -',
                style: h4.copyWith(wordSpacing: 1),
              ),
              Text('Up!', style: h4.copyWith(wordSpacing: 1, color: Colors.red))
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
