import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DateTimeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DateTimeApp extends StatefulWidget {
  const DateTimeApp({super.key});

  @override
  State<DateTimeApp> createState() => _DateTimeAppState();
}

class _DateTimeAppState extends State<DateTimeApp> {
  String pickedDate = 'No date picked yet';
  String pickedTime = 'No time picked yet';

  void pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),     
      firstDate: DateTime(2000),  
      lastDate: DateTime(2100),       
    );

    if (date != null) {
      setState(() {
        pickedDate = '${date.day}-${date.month}-${date.year}';
      });
    }
  }

  void pickTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),  
    );

    if (time != null) {
      setState(() {
        pickedTime = time.format(context);  
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick Date & Time')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Date: $pickedDate', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Selected Time: $pickedTime', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text('Pick a Date'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: pickTime,
              child: const Text('Pick a Time'),
            ),
          ],
        ),
      ),
    );
  }
}
