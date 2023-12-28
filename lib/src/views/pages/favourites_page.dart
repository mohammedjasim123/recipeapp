import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.network(
            'https://img.freepik.com/premium-photo/creative-levitation-burger-white-background_259464-814.jpg',
            fit: BoxFit.cover,
          ),

          // Dark Overlay
          Container(
            color: Colors.black.withOpacity(0.9), // Adjust opacity as needed
          ),

          // Your Content
          const Center(
            child: Text(
              'Add your favourites here!',
              style: TextStyle(
                color: Color.fromARGB(255, 212, 210, 210),
                fontSize: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
