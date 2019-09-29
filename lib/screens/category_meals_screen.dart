import 'package:flutter/material.dart';
import 'package:flutter_meal_app_workout/models/meal.dart';
import 'package:flutter_meal_app_workout/widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArg['title'];
    final categoryId = routeArg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, i) {
            Meal meal = categoryMeals[i];
            return MealItem(
              id: meal.id,
              title: meal.title,
              affordability: meal.affordability,
              complexity: meal.complexity,
              duration: meal.duration,
              imageUrl: meal.imageUrl,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
