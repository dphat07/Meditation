import 'package:flutter/material.dart';

import 'home.dart';
import 'meditate.dart';
import 'music.dart';
import 'profile.dart';
import 'sleep.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  final List<Widget> pages = const [
    Home(),
    Sleep(),
    Music(),
    Meditate(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          IndexedStack(index: currentPageIndex, children: pages),
        ],
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(0xFF0A0E27),
          indicatorColor: const Color(0xFF8E97FD),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },

          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.notifications_sharp, color: Colors.white),
              label: 'Sleep',
            ),
            NavigationDestination(
              icon: Icon(Icons.auto_awesome, color: Colors.white),
              label: 'Meditate',
            ),
            NavigationDestination(
              icon: Icon(Icons.music_note, color: Colors.white),
              label: 'Music',
            ),
            NavigationDestination(
              icon: Icon(Icons.person, color: Colors.white),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
