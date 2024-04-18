// ignore: unused_import
import 'package:cookiesapp/home.dart';
// ignore: unused_import
import 'package:cookiesapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _goHome();
    super.initState();
  }

  _goHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // color: const Color.fromRGBO(108, 44, 157, 1),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(108, 44, 157, 1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(children: [
        Positioned(
          top: 65,
          left: 0,
          child: Image.asset(
            'assets/Cupcake.png', // Your image path
            width: 132,
            height: 132,
          ),
        ),
        Positioned(
          // alignment: Alignment.center,
          top: 288,
          left: 78,
          child: Image.asset(
            'assets/logo 1.png', // Your image path
            width: 223,
            height: 85,
          ),
        ),
        Positioned(
          top: 465,
          right: 0,
          child: Image.asset(
            'assets/fluent-emoji_chocolate-bar.png', // Your image path
            width: 177,
            height: 177,
          ),
        ),
        Positioned(
          top: 627,
          left: 0,
          child: Image.asset(
            'assets/cookie.png',
            width: 149,
            height: 149,
          ),
        )
      ]),
    );
  }
}
