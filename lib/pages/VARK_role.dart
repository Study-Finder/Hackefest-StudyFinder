import 'package:flutter/material.dart';

class VarkTestRolePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      child: Text(
                        'Please do the VARK test before studying!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.blue[800],
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'RULES VARK TEST',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          for (int index = 1; index <= 3; index++)
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '$index. ${index == 1 ? 'Pilihlah jawaban yang paling sesuai dengan kondisi anda.' : index == 2 ? 'Anda boleh memilih lebih dari satu pilihan jika memang ada lebih dari kondisi yang sesuai.' : 'Kosongkan saja pilihan yang tidak sesuai dengan anda.'}',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.blue),
                              ),
                            ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/vark_test');
              },
              child: Text('START VARK TEST',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue[800],
                  )),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
