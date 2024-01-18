import 'package:flutter/material.dart';

class RegisterRole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        color: Colors.blue[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              width: 300,
              height: 100,
            ),
            SizedBox(height: 15),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      child: Text(
                        'Register as Mentor',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/upload_certificate');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
                        onPrimary: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      child: Text(
                        'Register as Student',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/register');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
                        onPrimary: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
