import 'package:cookiesapp/crown_page.dart';
import 'package:cookiesapp/feed_page.dart';
import 'package:cookiesapp/page3.dart';
import 'package:cookiesapp/post_page.dart';
import 'package:cookiesapp/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cookies App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: SplashScreen(),
      routes: {
        '/home': (context) => ThirdPage(),
        '/feed': (context) => FeedPage(),
        '/add': (context) => MyPosts(),
        '/crown': (context) => Mycrown(),
        '/profile': (context) => FeedPage(),
      },
    );
  }
}
