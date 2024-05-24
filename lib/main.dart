import 'package:flutter/material.dart';
import 'package:travel_app/detail_page.dart';
import 'package:travel_app/explore_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AspenPage(),
      routes: {
        '/detail': (context) => const DetailPage(),
        '/explore': (context) => const ExplorePage(),
      },
    );
  }
}

class AspenPage extends StatelessWidget {
  const AspenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Text(
                'Aspen',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontFamily: 'BrushScript',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              bottom: 150,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plan your',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Luxurious',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Vacation',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/explore');},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                child: const Center(
                  child: Text('Explore'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
