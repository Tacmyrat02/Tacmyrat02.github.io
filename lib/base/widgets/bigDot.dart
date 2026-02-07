import 'package:flutter/material.dart';

class bigDot extends StatelessWidget {
  const bigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(color: Colors.blue,border:Border.all(width: 2.5),borderRadius: BorderRadius.circular(10))
      );
    
  }
}