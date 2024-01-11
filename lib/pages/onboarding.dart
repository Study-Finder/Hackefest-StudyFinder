import 'package:flutter/material.dart';

class BoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color blueColor = Color(0xFF0077CC);
    const Color whiteColor = Color(0xFFF4FAFF);

    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Image.asset(
                'assets/logo.png',
                width: 300,
                height: 100,
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(30),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/hello.gif',
                        width: 400,
                        height: 300,
                      ),
                      Text(
                        '“Positive things are created, not sought, and studyfinder is one part of creating positive things”',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                  child: Text(
                    'Start Exploring',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: whiteColor,
                  onPrimary: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
