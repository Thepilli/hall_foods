import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_index_provider.g.dart';

@riverpod
class FoodIndex extends _$FoodIndex {
  @override
  String build() {
    return 'foodId01';
  }

  void onTap(String foodId) {
    state = foodId;
  }
}
