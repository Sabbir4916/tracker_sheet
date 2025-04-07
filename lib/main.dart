import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        fontFamily: 'RobotoSlab', 
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.teal, 
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HelloWorldScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World!',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
