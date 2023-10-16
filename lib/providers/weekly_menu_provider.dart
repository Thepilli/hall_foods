import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/models/week_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_menu_provider.g.dart';

@riverpod
class WeeklyMenu extends _$WeeklyMenu {
  Food emptyFood = Food(
      isVegetarian: false,
      foodId: '',
      foodImg: '',
      foodname: 'You have not picked any lunch yet',
      dayAvailable: '',
      alergens: []);
  @override
  WeekMenu build() {
    return WeekMenu(
      mondayLunch: null,
      tuesdayLunch: null,
      wednesdayLunch: null,
      thursdayLunch: null,
      fridayLunch: null,
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
          mondayLunch: null,
        );
        state = weekMenu;
        break;
      case 'Tuesday':
        weekMenu = state.copyWith(
          tuesdayLunch: null,
        );
        state = weekMenu;
        break;
      case 'Wednesday':
        weekMenu = state.copyWith(
          wednesdayLunch: null,
        );
        state = weekMenu;
        break;
      case 'Thursday':
        weekMenu = state.copyWith(
          thursdayLunch: null,
        );
        state = weekMenu;
        break;
      case 'Friday':
        weekMenu = state.copyWith(
          fridayLunch: null,
        );
        state = weekMenu;
        break;
    }
  }
}
