import 'package:flutter/material.dart';
import 'package:study_finder/pages/onboarding.dart';
import 'package:study_finder/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyFinder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BoardingPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
