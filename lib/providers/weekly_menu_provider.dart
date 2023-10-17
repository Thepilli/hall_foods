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
    WeekMenu newMenu = state;

    switch (food.dayAvailable) {
      case 'Monday':
        newMenu = newMenu.copyWith(mondayLunch: food);
        break;
      case 'Tuesday':
        newMenu = newMenu.copyWith(tuesdayLunch: food);
        break;
      case 'Wednesday':
        newMenu = newMenu.copyWith(wednesdayLunch: food);
        break;
      case 'Thursday':
        newMenu = newMenu.copyWith(thursdayLunch: food);
        break;
      case 'Friday':
        newMenu = newMenu.copyWith(fridayLunch: food);
        break;
    }

    state = newMenu;
  }

  void removeFromMenu(Food? food) {
    WeekMenu newMenu = state;
    switch (food!.dayAvailable) {
      case 'Monday':
        newMenu = newMenu.copyWith(mondayLunch: emptyFood);
        break;
      case 'Tuesday':
        newMenu = newMenu.copyWith(tuesdayLunch: emptyFood);
        break;
      case 'Wednesday':
        newMenu = newMenu.copyWith(wednesdayLunch: emptyFood);
        break;
      case 'Thursday':
        newMenu = newMenu.copyWith(thursdayLunch: emptyFood);
        break;
      case 'Friday':
        newMenu = newMenu.copyWith(fridayLunch: emptyFood);
        break;
    }
    state = newMenu;
  }
}
