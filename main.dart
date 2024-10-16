import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Hi-Kod'),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Üstte 4 sütun
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildColorBox(Colors.teal),
                _buildColorBox(Colors.white),
                _buildColorBox(Colors.red),
                _buildColorBox(Colors.black),
              ],
            ),
            SizedBox(height: 20), // Dikey boşluk

            // Ortada 2 sütun
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildColorBox(Colors.blue),
                _buildColorBox(Colors.white),
              ],
            ),
            SizedBox(height: 20), // Dikey boşluk

            // Altta 1 sütun
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildColorBox(Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorBox(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
      margin: EdgeInsets.all(5), // Kutular arasında boşluk
    );
  }
}
