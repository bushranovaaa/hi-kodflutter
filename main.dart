import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug banner'ı kaldırdım
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Hi-Kod',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
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
            SizedBox(height: 20),

            // Ortada 2 sütun
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildColorBox(Colors.blue),
                _buildColorBox(Colors.white),
              ],
            ),
            SizedBox(height: 20),

            // Altta 1 sütun
            _buildColorBox(Colors.teal),

            SizedBox(height: 40),

            // Sayfa Ekle Butonu
            FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Yeni sayfa eklendi!')),
                );
              },
              backgroundColor: Colors.orange,
              child: Icon(Icons.add, size: 30),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorBox(Color color) {
    return Container(
      width: 60, // Kutuların boyutlarını biraz büyüttüm
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8), // Kutulara yuvarlak köşe ekledim
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      margin: EdgeInsets.all(8), // Kutular arasında daha fazla boşluk
    );
  }
}

