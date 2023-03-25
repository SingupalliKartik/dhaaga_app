import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dhaagafinal/splash.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       //
      ),
       home: splash());
  }
  
}



