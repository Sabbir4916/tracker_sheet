import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ImageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/Sabbir.JPG', width: 500, height: 500,),
      ),
    );
  }
}
