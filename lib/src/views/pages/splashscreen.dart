import 'package:flutter/material.dart';
import 'package:recipeapp/src/views/pages/mainpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.network(
            'https://img.freepik.com/free-photo/top-view-sketchbook-with-various-spices-herbs-arranged-around_141793-7315.jpg',
            fit: BoxFit.cover,
          ),

          // Your Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Image with Border Radius
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  'https://i.pinimg.com/736x/92/84/e2/9284e288a99d4c6b68f9e34d26df8f46.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),

              // Brand Name
              SizedBox(height: 16),
              Text(
                'RecipeRover',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cooking Creativity, Unleashed!',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              SizedBox(height: 16)
            ],
          ),

          // Button at the Bottom
          Positioned(
            bottom: 100,
            left: 50,
            right: 50,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to another page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
