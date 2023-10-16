// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hall_foods/models/food.dart';

class WeekMenu {
  final Food? mondayLunch;
  final Food? tuesdayLunch;
  final Food? wednesdayLunch;
  final Food? thursdayLunch;
  final Food? fridayLunch;

  WeekMenu({
    this.mondayLunch,
    this.tuesdayLunch,
    this.wednesdayLunch,
    this.thursdayLunch,
    this.fridayLunch,
  });

  WeekMenu copyWith({
    Food? mondayLunch,
    Food? tuesdayLunch,
    Food? wednesdayLunch,
    Food? thursdayLunch,
    Food? fridayLunch,
  }) {
    return WeekMenu(
      mondayLunch: mondayLunch,
      tuesdayLunch: tuesdayLunch,
      wednesdayLunch: wednesdayLunch,
      thursdayLunch: thursdayLunch,
      fridayLunch: fridayLunch,
    );
  }
}

WeekMenu weekMenu = WeekMenu(
  mondayLunch: null,
  tuesdayLunch: null,
  wednesdayLunch: null,
  thursdayLunch: null,
  fridayLunch: null,
);
