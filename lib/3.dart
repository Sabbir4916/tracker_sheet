import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("ListView",style: TextStyle(backgroundColor: const Color.fromARGB(255, 4, 195, 253))),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Center(
                child: Text("Item $index"),
              ),
            );
          },
        ),
      ),
    );
  }
}