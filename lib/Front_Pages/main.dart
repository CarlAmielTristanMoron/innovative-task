import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import 'package:page_transition/page_transition.dart';
import 'front_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Innovative Task',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
      splashIconSize: 250,
      splash: Images.frontLogo,
      backgroundColor: Colors.white,
      duration: 1500,
      nextScreen: const MainPage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    ),
  )
  );
}

