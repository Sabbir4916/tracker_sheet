import 'package:flutter/material.dart';

void main() => runApp(MySettingsApp());

class MySettingsApp extends StatefulWidget {
  @override
  _MySettingsAppState createState() => _MySettingsAppState();
}

class _MySettingsAppState extends State<MySettingsApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark Mode',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: SettingsScreen(
        isDarkMode: _isDarkMode,
        onToggle: (value) {
          setState(() {
            _isDarkMode = value;
          });
        },
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggle;

  SettingsScreen({required this.isDarkMode, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              title: Text("Dark Mode", 
                style: TextStyle(fontSize: 20),
              ),
              value: isDarkMode,
              onChanged: onToggle,
              secondary: Icon(Icons.dark_mode, size: 30),
              contentPadding: EdgeInsets.symmetric(horizontal: 40),
            ),
          ],
        ),
      ),
    );
  }
}