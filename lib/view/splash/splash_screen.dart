// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:luxury_guide/welcome_screen.dart/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const WelcomeScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://lendwithnerutoday.com/wp-content/uploads/2022/03/logo.png'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
