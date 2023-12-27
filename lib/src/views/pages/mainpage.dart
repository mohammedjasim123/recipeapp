import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipeapp/src/views/pages/allrecipes_page.dart';
import 'package:recipeapp/src/views/pages/favourites_page.dart';
import 'package:recipeapp/src/views/pages/homescreen_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreenPage(),
    AllRecipesPage(),
    FavouritesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.element_3), label: 'Recipes'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'Favourites'),
        ],
        currentIndex: currentTab,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
      body: Center(
        child: screens.elementAt(currentTab),
      ),
    );
  }
}
