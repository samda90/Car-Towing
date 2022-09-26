import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:car_towing/screens/home_0.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Towing App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 0200,
      // splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      splash: const Intro(),
      nextScreen: const Home0(),
    );
  }
}



class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -111.0,
            left: -155.0,
            child: Container(
              height: 234.0,
              width: 277.0,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(277, 234))
              ),
            ),
          ),
          Center(
            child: Container(
              width: 360.0,
              height: 334.0,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.elliptical(360, 334))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('FCS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 96.0,
                      letterSpacing: 1.7,
                      fontWeight: FontWeight.w800,
                      // fontFamily: ,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -111.0,
            right: -155.0,
            child: Container(
              height: 234.0,
              width: 277.0,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(277, 234))
              ),
            ),
          ),
        ],
      ),
    );
  }
}