import 'package:hall_foods/models/food.dart';

class MyNextWeekMenu {
  final Food mondayLunch;
  final Food tuesdayLunch;
  final Food wednesdayLunch;
  final Food thursdayLunch;
  final Food fridayLunch;

  MyNextWeekMenu(
      {required this.mondayLunch,
      required this.tuesdayLunch,
      required this.wednesdayLunch,
      required this.thursdayLunch,
      required this.fridayLunch});
}
