import 'package:hall_foods/models/food.dart';

class DailyMenu {
  final List<Food> dailyMenu;
  final String day;

  DailyMenu({
    required this.dailyMenu,
    required this.day,
  });
}
