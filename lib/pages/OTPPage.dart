import 'package:flutter/material.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2196F3),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            SizedBox(height: 20),
            Image.asset('assets/logo.png'),
            SizedBox(height: 15),
            Text(
              'INPUT OTP',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            _buildOTPFields(),
            SizedBox(height: 25),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/vark_role');
              },
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  color: Color(0xFF2196F3),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildOTPFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) => _buildOTPBox()),
    );
  }

  Widget _buildOTPBox() {
    return Container(
      width: 45,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
