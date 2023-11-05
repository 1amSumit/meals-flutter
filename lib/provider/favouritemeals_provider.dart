import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:meals/modals/meal.dart";

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealsNotifier() : super([]);

  bool toggleMealsFavourite(Meal meal) {
    final isFavouriteExixts = state.contains(meal);

    if (isFavouriteExixts) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favouriteMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>((ref) {
  return FavouriteMealsNotifier();
});
