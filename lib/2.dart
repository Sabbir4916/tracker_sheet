import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(), debugShowCheckedModeBanner: false);
  }
}

class HomeActivity extends StatefulWidget {
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  String text = "Press the Button";

  void _afterclick() {
    setState(() {
      text = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Problem 2"),
        backgroundColor: const Color.fromARGB(255, 184, 222, 241),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 50)),
            //Container(padding: EdgeInsets.all(20), color: Colors.blue),
            ElevatedButton(
              onPressed: _afterclick,
              child: Text("Button", style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}