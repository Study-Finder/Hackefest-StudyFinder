import 'package:flutter/material.dart';

class VarkTestPage extends StatefulWidget {
  @override
  _VarkTestRolePageState createState() => _VarkTestRolePageState();
}

class _VarkTestRolePageState extends State<VarkTestPage> {
  int _currentPage = 0;
  PageController _pageController = PageController();
  List<Map<String, dynamic>> questions = [
    {
      'question':
          'Ketika Anda mencoba mengingat informasi baru, apa yang paling membantu Anda?',
      'answers': [
        'Melihat diagram atau grafik',
        'Mendengarkan penjelasan',
        'Membaca atau menulis catatan',
        'Melakukan atau mencoba praktiknya'
      ],
      'selectedAnswer': '',
    },
    {
      'question':
          'Ketika Anda berpartisipasi dalam sebuah diskusi, Anda lebih cenderung:',
      'answers': [
        'Menggambar atau membuat sketsa apa yang dibicarakan',
        'Mendiskusikan topik tersebut',
        'Mencatat poin-poin penting',
        'Menunjukkan atau menggunakan gerakan tangan'
      ],
      'selectedAnswer': '',
    },
    {
      'question':
          'Apa metode belajar yang Anda sukai untuk memahami konsep baru?',
      'answers': [
        'Menonton video atau presentasi visual',
        'Mendengarkan podcast atau rekaman',
        'Membaca buku atau artikel',
        'Melakukan percobaan atau simulasi'
      ],
      'selectedAnswer': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 180.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 24.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            questions[index]['question'],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ...questions[index]['answers'].map<Widget>((answer) {
                          return RadioListTile(
                            title: Text(answer),
                            value: answer,
                            groupValue: questions[index]['selectedAnswer'],
                            onChanged: (value) {
                              setState(() {
                                questions[index]['selectedAnswer'] = value;
                              });
                            },
                          );
                        }).toList(),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Back
                if (_currentPage > 0)
                  ElevatedButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text('Back'),
                  ),
                // Tombol Next
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage < questions.length - 1 &&
                        questions[_currentPage]['selectedAnswer'] != '') {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    } else {
                      Navigator.pushReplacementNamed(context, '/');
                    }
                  },
                  child: Text(
                      _currentPage < questions.length - 1 ? 'Next' : 'Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
