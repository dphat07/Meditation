import 'package:flutter/material.dart';

import 'bottom-tab-navigation.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/intro_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          Column(
            children: [
              const SizedBox(height: 155),
              Text(
                'Welcome to Sleep',
                style: TextStyle(
                  color: Color(0xFFE6E7F2),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Explore the new king of sleep. It uses sound "
                  "and visualization to create perfect conditions "
                  "for refreshing sleep.",
                  style: TextStyle(color: Color(0xFFE6E7F2), fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8E97FD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Navigation(),
                        ),
                      );
                    },
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
