import 'package:hall_foods/pages/food_list_page/food_list_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_menu_day_provider.g.dart';

@Riverpod(keepAlive: true)
class FoodMenuDay extends _$FoodMenuDay {
  @override
  String build() {
    return 'Monday';
  }

  void changeSelectedDay(String weekDay) {
    print(weekDay);
    state = weekDay;
  }
}
