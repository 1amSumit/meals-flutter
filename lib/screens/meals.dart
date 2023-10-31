import 'package:flutter/material.dart';
import "package:meals/modals/meal.dart";
import "package:meals/widgets/meal_item.dart";

class MealScreen extends StatelessWidget {
  static String id = "mealScreen";

  const MealScreen({
    super.key,
    this.title,
    required this.meals,
    required this.toggleFavourite,
  });

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) toggleFavourite;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Uh oh ... Nothing here!",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Try Selecting different Category",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
          toggleFavourite: toggleFavourite,
          meal: meals[index],
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title!),
        ),
      ),
      body: content,
    );
  }
}
