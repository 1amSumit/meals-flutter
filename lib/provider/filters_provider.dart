import "package:flutter_riverpod/flutter_riverpod.dart";

enum Filter {
  glutanFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersProviderNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersProviderNotifier()
      : super({
          Filter.glutanFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });
  void setFilters(Map<Filter, bool> userChoosenFilter) {
    state = userChoosenFilter;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersProviderNotifier, Map<Filter, bool>>((ref) {
  return FiltersProviderNotifier();
});
