import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Make the container fill the width
        padding: EdgeInsets.all(20.0),
        color: Colors.blue, // Replace with the exact color code from the design
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Add this line
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              width: 300,
              height: 100,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text(
                'Login as Student',
                style: TextStyle(fontSize: 18), // Set the font size here
              ),
              onPressed: () {
                // Handle the button action for student login
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button color
                  onPrimary: Colors.blue, // Text color
                  minimumSize: Size(
                      double.infinity, 60) // Set the minimum size of the butt
                  ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text(
                'Login as Mentor',
                style: TextStyle(fontSize: 18), // Set the font size here
              ),
              onPressed: () {
                // Handle the button action for mentor login
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button color
                  onPrimary: Colors.blue, // Text color
                  minimumSize: Size(
                      double.infinity, 60) // Set the minimum size of the button
                  ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.white, fontSize: 16),
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
