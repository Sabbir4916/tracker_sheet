import 'package:flutter/material.dart';
 
 void main() {
   runApp(const TrackerSheet());
 }
 
 class TrackerSheet extends StatelessWidget {
   const TrackerSheet({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: const HomeScreen(),
     );
   }
 }
 
 class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Center(child: Text('Navigation Drawer')),
       ),
       drawer: Drawer(
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             const DrawerHeader(
               decoration: BoxDecoration(color: Color.fromARGB(255, 173, 20, 0)),
               child: Text(
                 'Menu',
                 style: TextStyle(color: Colors.white, fontSize: 24),
               ),
             ),
             ListTile(
               title: const Text('Drawer1'),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const CarScreen()),
                 );
               },
             ),
             ListTile(
               title: const Text('Drawer2'),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const LogosScreen()),
                 );
               },
             ),
           ],
         ),
       ),
       body: Container(
         color: const Color.fromARGB(255, 23, 148, 250),
       ),
     );
   }
 }
 
 class CarScreen extends StatelessWidget {
   const CarScreen({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
       ),
       body: Container(
         color: const Color.fromARGB(255, 22, 5, 255),
       ),
     );
   }
 }
 
 class LogosScreen extends StatelessWidget {
   const LogosScreen({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(     
         ),
       body: Container(
         color: const Color.fromARGB(255, 23, 146, 7),
       ),
     );
   }
 }
