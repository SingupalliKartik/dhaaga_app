import 'package:dhaagafinal/home.dart';
import 'package:dhaagafinal/splash%20copy.dart';
import 'package:flutter/material.dart';
import 'package:dhaagafinal/home.dart';
class btn extends StatelessWidget {
  const btn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage()));
      },
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          alignment: Alignment.center,
          height: 55,
          width: 125,
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 60, 26, 2),
              borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'Sign in ', 
             
            style: TextStyle(
              fontSize:20,
              color: Colors.white,
              fontWeight: FontWeight.w600
            ),
          ),
          
        ),
      ),
    );
  }
}