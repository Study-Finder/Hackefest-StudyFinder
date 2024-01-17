import 'package:flutter/material.dart';

class BottomBar {
  static BottomNavigationBarItem chat() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chat',
    );
  }

  static BottomNavigationBarItem search() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    );
  }

  static BottomNavigationBarItem profile() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    );
  }
}
