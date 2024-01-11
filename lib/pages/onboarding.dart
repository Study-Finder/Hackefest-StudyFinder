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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8), // Margin dikurangi
                child: Padding(
                  padding: const EdgeInsets.all(16.0), // Padding dikurangi
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'logo.png',
                        width: 300,
                        height: 100,
                      ),
                      Image.asset(
                        'hello.gif',
                        width: 300,
                        height: 200,
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
                      SizedBox(height: 20), // Ukuran dikecilkan
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12), // Margin dikurangi
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Text(
                    'Start Exploring',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: whiteColor,
                  onPrimary: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
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
