import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'home.dart';
import 'login.dart';

class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<splash2> createState() => _splashState();
}

class _splashState extends State<splash2> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: AnimatedSplashScreen(
                  splashIconSize: double.infinity,
                  splash: Image.asset(
                    "images/logo.jpg",
                  ),
                  duration: 500,
                  splashTransition: SplashTransition.fadeTransition,
                  backgroundColor: Colors.white,
                  nextScreen: MyHomePage()),

              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     fit: BoxFit.fill,

              //     // image:  AssetImage("images/logo.jpg"),
              //     )
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
              
//               decoration: BoxDecoration(
                
//                 image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image:  AssetImage("images/logo.jpg"),)
//               ),

//               height: 250,
              
//             ),

// AnimatedSplashScreen(
//         splash:Image.asset("images/logo.jpg"),
//         duration: 3500,
//         splashTransition: SplashTransition.fadeTransition,
//         backgroundColor: Colors.white,
//         nextScreen: loginscreen())