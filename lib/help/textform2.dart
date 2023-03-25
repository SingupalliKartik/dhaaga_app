import 'package:flutter/material.dart';

class textform2 extends StatelessWidget {
 textform2({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
              color: Color.fromARGB(255, 233, 211, 175),
              borderRadius: BorderRadius.circular(20),
        ),
    
      
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
    
          decoration: const InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.password),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(0),
            hintStyle: TextStyle(
              height: 2.25,
              color: Color.fromARGB(120, 60, 26, 2),
            )
          ),
        ),
      ),
    );
  }
}
