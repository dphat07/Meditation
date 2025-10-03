import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Music Content",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
