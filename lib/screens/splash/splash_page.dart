import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/global.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed('/customer');
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(logo),
                ),
              ),
            ),
            Text(
              'D-Mat',
              style: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 35,
                height: -0.5,
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
