import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: Duration.millisecondsPerSecond,
      pageTransitionType: PageTransitionType.leftToRight,
      backgroundColor: Colors.white,
      splashIconSize: 550,
      splash: Image(image: AssetImage('assets/images/hadeth_bg.png')),
      nextScreen: HomeScreen(),
    );
  }
}
