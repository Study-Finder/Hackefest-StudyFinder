import 'package:flutter/material.dart';
import 'package:study_finder/pages/onboarding.dart';
import 'package:study_finder/pages/login.dart';
import 'package:study_finder/pages/login_form.dart';
import 'package:study_finder/pages/register.dart';
import 'package:study_finder/pages/register_form_email.dart';
import 'package:study_finder/pages/register_form_number.dart';
import 'package:study_finder/pages/register_role.dart';
import 'package:study_finder/pages/OTPPage.dart';
import 'package:study_finder/pages/VARK_role.dart';
import 'package:study_finder/pages/vark_test.dart';
import 'package:study_finder/pages/upload_certificate.dart';
import 'package:study_finder/pages/dashboard.dart';
import 'package:study_finder/pages/notifPage.dart';

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
        '/login_form': (context) => LoginFormPage(),
        '/register': (context) => RegisterPage(),
        '/register_role': (context) => RegisterRole(),
        '/register_form_email': (context) => RegisterFormPageEmail(),
        '/register_form_number': (context) => RegisterFormPageNumber(),
        '/otp': (context) => OTPPage(),
        '/vark_role': (context) => VarkTestRolePage(),
        '/vark_test': (context) => VarkTestPage(),
        '/upload_certificate': (context) => UploadFilePage(),
        '/dashboard': (context) => DashboardPage(),
        '/notification': (context) => NotificationPage(),
      },
    );
  }
}
