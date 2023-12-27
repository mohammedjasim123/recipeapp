import 'package:flutter/material.dart';
import 'package:recipeapp/src/model/food.dart';

class RecipeItemWidget extends StatefulWidget {
  final Food food;

  const RecipeItemWidget({required this.food, Key? key}) : super(key: key);

  @override
  _RecipeItemWidgetState createState() => _RecipeItemWidgetState();
}

class _RecipeItemWidgetState extends State<RecipeItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.food.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black.withOpacity(0.7),
            child: Text(
              widget.food.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
