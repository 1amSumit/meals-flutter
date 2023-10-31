import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import "package:meals/widgets/category_widget.dart";
import "package:meals/modals/meal.dart";

class CategoriesScreen extends StatelessWidget {
  static String id = "category";
  const CategoriesScreen({
    super.key,
    required this.toggleFavourite,
  });
  final void Function(Meal meal) toggleFavourite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(24.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryItem(
              category: category,
              toggleFavourite: toggleFavourite,
            ),
        ],
      ),
    );
  }
}
