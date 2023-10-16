import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/models/week_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_menu_provider.g.dart';

@riverpod
class WeeklyMenu extends _$WeeklyMenu {
  Food emptyFood = Food(isVegetarian: false, foodId: '', foodImg: '', foodname: '', dayAvailable: '', alergens: []);
  @override
  WeekMenu build() {
    return WeekMenu(
      mondayLunch: emptyFood,
      tuesdayLunch: emptyFood,
      wednesdayLunch: emptyFood,
      thursdayLunch: emptyFood,
      fridayLunch: emptyFood,
    );
  }

  void updateMenu(Food food) {
    switch (food.dayAvailable) {
      case 'Monday':
        weekMenu = state.copyWith(
          mondayLunch: food,
        );
        state = weekMenu;
        break;
      case 'Tuesday':
        weekMenu = state.copyWith(
          tuesdayLunch: food,
        );
        state = weekMenu;
        break;
      case 'Wednesday':
        weekMenu = state.copyWith(
          wednesdayLunch: food,
        );
        state = weekMenu;
        break;
      case 'Thursday':
        weekMenu = state.copyWith(
          thursdayLunch: food,
        );
        state = weekMenu;
        break;
      case 'Friday':
        weekMenu = state.copyWith(
          fridayLunch: food,
        );
        state = weekMenu;
        break;
    }
  }

  void removeFromMenu(Food? food) {
    switch (food!.dayAvailable) {
      case 'Monday':
        weekMenu = state.copyWith(
          mondayLunch: emptyFood,
        );
        state = weekMenu;
        break;
      case 'Tuesday':
        weekMenu = state.copyWith(
          tuesdayLunch: emptyFood,
        );
        state = weekMenu;
        break;
      case 'Wednesday':
        weekMenu = state.copyWith(
          wednesdayLunch: emptyFood,
        );
        state = weekMenu;
        break;
      case 'Thursday':
        weekMenu = state.copyWith(
          thursdayLunch: emptyFood,
        );
        state = weekMenu;
        break;
      case 'Friday':
        weekMenu = state.copyWith(
          fridayLunch: emptyFood,
        );
        state = weekMenu;
        break;
    }
  }
}
