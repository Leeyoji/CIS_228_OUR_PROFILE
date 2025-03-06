import 'package:cis_228_new_project/profile2.dart';
import 'package:flutter/material.dart';
import 'profile1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/profile1': (context) => const Profilepage1(
            ),
        '/profile2': (context) => const Profilepage2(

            ),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Profile'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10.0),
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/profile1'),
            child: Container(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/230106.jpeg',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Victoria Clarize Lozada',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text(
                    'BSIS-3A',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/profile2'),
            child: Container(
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/dp.jpg',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Leo Jay Eulatriz',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text(
                    'BSIS-3A',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
