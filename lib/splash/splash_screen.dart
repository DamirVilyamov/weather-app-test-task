import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_test_task/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.routeName, (Route<dynamic> root) => false);
    });
    return Scaffold(
      body: Center(
        child:
            Lottie.asset('assets/splash_animation_weather.json', repeat: true),
      ),
    );
  }
}
