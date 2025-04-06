import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Bottom Nav',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 200,
        backgroundImage: NetworkImage(
          'https://scontent.fdac8-1.fna.fbcdn.net/v/t39.30808-6/460725623_3369570906685292_8651627397709562787_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF2YfY1lSK1VLLi_yHUfE2JZ9Ec5d8jfqJn0Rzl3yN-olSmAB9fl5xlhjNCfFLbA4PS9j3lUtqloTimgaARx4Og&_nc_ohc=-OBkAB6hSiMQ7kNvwHImEkY&_nc_oc=AdmeyPIp86I2KrlW-EyWDWY_0GQuJPvvwocBpgr_gPmL1d7Ofa9tTcZoihNmsouDvFM&_nc_zt=23&_nc_ht=scontent.fdac8-1.fna&_nc_gid=UIDAVfC1em7IOOWjPHZ49Q&oh=00_AfFJvALe9wH4cAWxlBc6E0Ma7nnSBvXHp4RoNFxeaf1m2w&oe=67FB76CF',
        ),
      ),
      SizedBox(height: 16),
      Text(
        'Sabbir Ahmed',
        style: TextStyle(fontSize: 20),
      ),
    ],
  ),
),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navbar')),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
