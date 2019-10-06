import 'package:flutter/material.dart';
import 'package:flutter_meal_app_workout/models/meal.dart';
import 'package:flutter_meal_app_workout/widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    if(widget.favoriteMeals.isEmpty){
      return Center(child: Text('You have no favorite meals'));
    }
    return ListView.builder(
          itemBuilder: (ctx, i) {
            Meal meal = widget.favoriteMeals[i];
            return MealItem(
                id: meal.id,
                title: meal.title,
                affordability: meal.affordability,
                complexity: meal.complexity,
                duration: meal.duration,
                imageUrl: meal.imageUrl);
          },
          itemCount: widget.favoriteMeals.length,
        );
  }
}