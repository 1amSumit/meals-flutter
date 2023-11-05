import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import 'package:meals/screens/categories.dart';
import 'package:meals/screens/filters.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/side_drawer.dart';
import "package:meals/provider/meals_provider.dart";
import "package:meals/provider/favouritemeals_provider.dart";

const kInitialFiltered = {
  Filter.glutanFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false,
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  String appBarText = "Categories";

  Map<Filter, bool> filterMealResult = kInitialFiltered;

  void _setDrawerPage(String screenName) async {
    if (screenName == "filter") {
      Navigator.pop(context);
      final result = await Navigator.push<Map<Filter, bool>>(
        context,
        MaterialPageRoute(
          builder: (ctx) {
            return const FilterScreen();
          },
        ),
      );
      setState(() {
        filterMealResult = result ?? kInitialFiltered;
      });
    } else {
      Navigator.pop(context);
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);
    final availableMeals = meals.where((meal) {
      if (filterMealResult[Filter.glutanFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (filterMealResult[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (filterMealResult[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (filterMealResult[Filter.vegan]! && !meal.isVegan) {
        return false;
      }

      return true;
    }).toList();
    Widget activePage = CategoriesScreen(
      availableMeals: availableMeals,
    );

    if (_selectedPageIndex == 1) {
      final favouriteMeals = ref.watch(favouriteMealsProvider);
      activePage = MealScreen(
        meals: favouriteMeals,
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
      drawer: SideDrawer(
        setScreen: _setDrawerPage,
      ),
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
