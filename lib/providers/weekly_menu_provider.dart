import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/models/week_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_menu_provider.g.dart';

@riverpod
class WeeklyMenu extends _$WeeklyMenu {
  Food emptyFood =
      Food(isVegetarian: false, foodId: '', foodImg: '', foodname: 'Nemáš objednané žádné jídlo', dayAvailable: '', alergens: []);
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
      case 'Pondělí':
        newMenu = newMenu.copyWith(mondayLunch: food);
        break;
      case 'Úterý':
        newMenu = newMenu.copyWith(tuesdayLunch: food);
        break;
      case 'Středa':
        newMenu = newMenu.copyWith(wednesdayLunch: food);
        break;
      case 'Čtvrtek':
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
      case 'Pondělí':
        newMenu = newMenu.copyWith(mondayLunch: emptyFood);
        break;
      case 'Úterý':
        newMenu = newMenu.copyWith(tuesdayLunch: emptyFood);
        break;
      case 'Středa':
        newMenu = newMenu.copyWith(wednesdayLunch: emptyFood);
        break;
      case 'Čtvrtek':
        newMenu = newMenu.copyWith(thursdayLunch: emptyFood);
        break;
      case 'Friday':
        newMenu = newMenu.copyWith(fridayLunch: emptyFood);
        break;
    }
    state = newMenu;
  }
}
