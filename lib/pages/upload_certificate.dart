import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadFilePage extends StatefulWidget {
  @override
  _UploadFilePageState createState() => _UploadFilePageState();
}

class _UploadFilePageState extends State<UploadFilePage> {
  String _fileName = '';
  bool _isUploading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Upload File PDF'),
      // ),
      backgroundColor: Colors.blue[800],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 130.0),
            Image.asset(
              'assets/logo.png',
            ),
            SizedBox(height: 5.0),
            Text(
              'Upload Certificate and Portfolio',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: InkWell(
                onTap: _openFileExplorer,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: _fileName.isNotEmpty
                          ? Icon(Icons.file_present,
                              size: 40, color: Colors.white)
                          : Icon(Icons.add, size: 40, color: Colors.white),
                      title: Text(
                        'Selected pdf file :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        _fileName.isEmpty ? 'Chose File PDF' : _fileName,
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 213, 201, 201),
                        ),
                      ),
                      trailing: _fileName.isNotEmpty
                          ? IconButton(
                              icon: Icon(Icons.clear, size: 30),
                              onPressed: () {
                                _clearSelectedFile();
                              },
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_fileName.isNotEmpty && !_isUploading) {
                  _uploadFile();
                } else if (_isUploading) {
                  _showSnackbar('File is currently being uploaded',
                      isError: true);
                } else {
                  _showSnackbar('Choose a PDF file first', isError: true);
                }
              },
              child: Text('Unggah File'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openFileExplorer() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        String fileName = result.files.single.name;
        setState(() {
          _fileName = fileName;
        });
      }
    } on Exception catch (e) {
      print('Error: $e');
    }
  }

  void _clearSelectedFile() {
    setState(() {
      _fileName = '';
    });
  }

  void _showSnackbar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
      ),
    );
  }

  void _uploadFile() async {
    setState(() {
      _isUploading = true;
    });

    setState(() {
      _isUploading = false;
    });

    _showSnackbar('File PDF berhasil diunggah');

    // Navigate to the "Vark Test" page after the snackbar disappears
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacementNamed(context, '/dashboard');
  }
}
