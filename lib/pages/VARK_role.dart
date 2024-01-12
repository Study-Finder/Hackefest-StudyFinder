import 'package:flutter/material.dart';

class VarkTestRolePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin:
                    EdgeInsets.only(bottom: 24.0), // Added margin at the bottom
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      // Added padding for the text
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      child: Text(
                        'Please do the VARK test before studying!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.blue,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Adjusted spacing
                    Text(
                      'RULES VARK TEST',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold, // Made text bold
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 24),
                    // List of rules
                    Padding(
                      // Added padding for the rules
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          for (int index = 1; index <= 3; index++)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0), // Added padding for each rule
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
                // TODO: Implement VARK test start functionality
              },
              child: Text('START VARK TEST',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
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
