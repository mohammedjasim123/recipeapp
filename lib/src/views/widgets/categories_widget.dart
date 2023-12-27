import 'package:flutter/material.dart';
import 'package:recipeapp/src/model/categories.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int selectedIndex = 0; // Index of the selected category

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 2.0), // Adjust spacing as needed
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 13.0),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.green
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(
                  categories[index].title,
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
