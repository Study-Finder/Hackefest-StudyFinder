import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
                        'Register with Google',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/register_form_email');
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
                        'Register with cell number',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/register_form_number');
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
                "change role?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/register_role');
              },
            ),
          ],
        ),
      ),
    );
  }
}
