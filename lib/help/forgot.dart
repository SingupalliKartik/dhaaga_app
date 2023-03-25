

import 'package:flutter/material.dart';




class forgot extends StatelessWidget {
  const forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Forgot password ?', 
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(166, 152, 117, 50),
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}