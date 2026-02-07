import 'package:flutter/material.dart';

// 1. Changed class name to UpperCamelCase
class AddLayout extends StatelessWidget {
  // 2. Added explicit type 'double'
  final double randomDevider; 

  const AddLayout({super.key, required this.randomDevider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            // First argument: length
            (constraints.maxWidth / randomDevider).floor(),
            // Second argument: generator function
            (index) => const SizedBox(
              width: 3,
              height: 1, // Fixed spelling of 'height'
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.greenAccent),
              ),
            ),
          ),
        );
      },
    );
  }
}