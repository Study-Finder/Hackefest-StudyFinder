import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Make the container fill the width
        padding: EdgeInsets.all(15.0),
        color: Colors.blue, // Replace with the exact color code from the design
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
                        'Login as Student',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        // Handle the button action for student login
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      child: Text(
                        'Login as Mentor',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        // Handle the button action for mentor login
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
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
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              onPressed: () {
                // Handle the button action for account creation
              },
            ),
          ],
        ),
      ),
    );
  }
}
