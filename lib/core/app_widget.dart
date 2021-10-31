import 'package:DevQuiz/challenge/challenge_page.dart';
import 'package:DevQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      )
    );
    return MaterialApp(
      title: "DevQuiz",
      home: SplashPage(),
    );
  }
}
