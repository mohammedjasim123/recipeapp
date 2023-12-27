import 'package:flutter/material.dart';
import 'package:recipeapp/src/views/pages/homescreen_page.dart';
import 'package:recipeapp/src/views/pages/mainpage.dart';
import 'package:recipeapp/src/views/widgets/recipeitem_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String bioFitFontFamily = 'BioFit';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: bioFitFontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreenPage(),
    );
  }
}
