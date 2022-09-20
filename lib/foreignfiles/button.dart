import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  const Buttom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Users'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    ],
    selectedItemColor: Colors.blueAccent,
    unselectedItemColor: Colors.black,
    );
  }
}


