import 'package:flutter/material.dart';

class BoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color blueColor = Color.fromARGB(255, 0, 119, 204);
    const Color whiteColor = Color(0xFFF4FAFF);

    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
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
                      SizedBox(height: 10),
                      Text(
                        'Hello',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 30,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      Image.asset(
                        'assets/hello.gif',
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
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
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
