import 'package:flutter/material.dart';
import 'package:know_it/AuthenticationScreens/OnboardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Know It',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      //routes: routes
    );

  }
}

