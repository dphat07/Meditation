import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        Text(
          "Sleep Stories",
          style: TextStyle(
            color: Color(0xFFE6E7F2),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Text(
            "Something bedtime stories to help you fall"
            " into a deep and natural sleep",
            style: TextStyle(color: Color(0xFFE6E7F2), fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
