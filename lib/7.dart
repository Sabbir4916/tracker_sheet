import 'package:flutter/material.dart';

void main() {
  runApp(const ImageGridApp());
}

class ImageGridApp extends StatelessWidget {
  const ImageGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  const ImageGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Image Grid')),
        backgroundColor: const Color.fromARGB(255, 117, 217, 235),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(128, 219, 240, 35),
                    spreadRadius: 3,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://scontent.fdac8-1.fna.fbcdn.net/v/t39.30808-6/460725623_3369570906685292_8651627397709562787_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF2YfY1lSK1VLLi_yHUfE2JZ9Ec5d8jfqJn0Rzl3yN-olSmAB9fl5xlhjNCfFLbA4PS9j3lUtqloTimgaARx4Og&_nc_ohc=XYOzIpyv0dYQ7kNvwGlWJfx&_nc_oc=AdkGqYlF9T5SIsFbMHXvARzyAfBs_RYjRBptinLPgvvgGVEsYYOgdZ2g0eaBoqZ5F_s&_nc_zt=23&_nc_ht=scontent.fdac8-1.fna&_nc_gid=jpR8vap-v5VupzkARhnW8w&oh=00_AfFhEtXlOqTYzeE7RzErWFW5gWBfKrvXzcnBRgLI3PEVfQ&oe=67F9ED0F',
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}