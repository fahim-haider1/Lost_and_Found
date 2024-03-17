import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/found_screen.dart';
import 'package:lost_and_found/screens/lost_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Handle logout action
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to LostScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LostScreen()),
                );
              },
              child: Text('Lost Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to FoundScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoundScreen()),
                );
              },
              child: Text('Found Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
