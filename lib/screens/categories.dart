import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import "package:meals/widgets/category_widget.dart";

class CategoriesScreen extends StatelessWidget {
  static String id = "category";
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Pick your Category"),
        ),
      ),
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
            CategoryItem(category: category),
        ],
      ),
    );
  }
}
