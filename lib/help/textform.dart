import 'package:flutter/material.dart';

class textform extends StatelessWidget {
 textform({super.key, required this.controller2});
  final TextEditingController controller2;

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
          controller: controller2,
          keyboardType: TextInputType.emailAddress,
          
    
          decoration: const InputDecoration(
            hintText: 'Email',
             prefixIcon: Icon(Icons.email),
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
