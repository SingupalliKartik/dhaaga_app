import 'package:dhaagafinal/home.dart';
import 'package:dhaagafinal/login.dart';
import 'package:flutter/material.dart';
import 'package:dhaagafinal/home.dart';
class cbtn extends StatelessWidget {
  const cbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => loginscreen()));
      },
      
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                   color: Color.fromARGB(255, 152,117,85),
                    borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Proceed to pay:      Rs:12021', 
                   
                  style: TextStyle(
                    fontSize:20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                  ),
                ),
                
              ),
            ),
          ],
        ),
      ));
  }
}

