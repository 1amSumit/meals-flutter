import 'package:flutter/material.dart';
import "package:meals/modals/category.dart";
import 'package:meals/screens/meals.dart';
import "package:meals/data/dummy_data.dart";
import "package:meals/modals/meal.dart";

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    required this.toggleFavourite,
  });

  final Category category;
  final void Function(Meal meal) toggleFavourite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => MealScreen(
                toggleFavourite: toggleFavourite,
                title: category.title,
                meals: dummyMeals
                    .where((meal) => meal.categories.contains(category.title))
                    .toList()),
          ),
        );
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.55),
              category.color.withOpacity(0.9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}
