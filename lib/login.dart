import 'package:dhaagafinal/help/forgot.dart';
import 'package:dhaagafinal/help/textform.dart';
import 'package:flutter/material.dart';

import 'help/btn.dart';
import 'help/textform2.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("images/logo1.png",),
                        // Text(
                        //   'Sign in ',
                        //   style: TextStyle(
                        //     color:  Color.fromARGB(255, 60, 26, 2),
                        //     fontSize: 30,
                        //     fontWeight:FontWeight.bold,
                        //   ),
                        // ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            'Sign in ',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Color.fromARGB(255, 60, 26, 2),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          textform(
                            controller2: emailController,
                          ),
                          
                          textform2(
                            controller: passController,
                          ),
                          const SizedBox(
                            height:65,
                          ),

                          btn(),
                          const SizedBox(
                            height: 15,
                          ),
                          forgot(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
