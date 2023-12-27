import 'package:flutter/material.dart';
import 'package:recipeapp/src/model/food.dart';
import 'package:recipeapp/src/views/pages/mainpage.dart';
import 'package:recipeapp/src/views/widgets/recipeitem_widget.dart';
import 'package:flutter/cupertino.dart';

class AllRecipesPage extends StatefulWidget {
  const AllRecipesPage({Key? key});

  @override
  State<AllRecipesPage> createState() => _AllRecipesPageState();
}

class _AllRecipesPageState extends State<AllRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image with Opacity
            Opacity(
              opacity: 0.7, // Adjust opacity as needed
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfpjpUgMbfGs5ddY-Fz1ukYSxupf8ls7dV3M7OtPeu4R7uabGzjF05EoEfLCsz7hmGXzA&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                            );
                          },
                          style: IconButton.styleFrom(
                            hoverColor: Colors.green,
                          ),
                          icon: Icon(CupertinoIcons.chevron_back),
                          color: Colors.black,
                          iconSize: 30,
                        ),
                        Text(
                          'Recipes',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        mainAxisExtent: 180,
                      ),
                      itemCount: items.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return RecipeItemWidget(food: items[index]);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
