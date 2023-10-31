import 'package:flutter/material.dart';
import 'package:meals/modals/meal.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/side_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  String appBarText = "Categories";

  final List<Meal> _favouriteMeals = [];

  void _showInfoMasseage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(message),
      ),
    );
  }

  void _toggleFavouriteMeals(Meal meal) {
    final isExixting = _favouriteMeals.contains(meal);

    if (isExixting) {
      setState(() {
        _favouriteMeals.remove(meal);
        _showInfoMasseage("Meal is no longer favourite");
      });
    } else {
      setState(() {
        _showInfoMasseage("Meal is added to favourite");
        _favouriteMeals.add(meal);
      });
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      toggleFavourite: _toggleFavouriteMeals,
    );

    if (_selectedPageIndex == 1) {
      activePage = MealScreen(
        meals: _favouriteMeals,
        toggleFavourite: _toggleFavouriteMeals,
      );
      appBarText = "Favourite Meals";
    } else {
      appBarText = "Categories";
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(appBarText),
        ),
      ),
      body: activePage,
      drawer: const SideDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (index) => _selectPage(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favourites",
          ),
        ],
      ),
    );
  }
}
