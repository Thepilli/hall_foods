import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_menu_day_provider.g.dart';

@Riverpod(keepAlive: true)
class FoodMenuDay extends _$FoodMenuDay {
  @override
  String build() {
    return 'Pondělí';
  }

  void changeSelectedDay(String weekDay) {
    print(weekDay);
    state = weekDay;
  }
}
