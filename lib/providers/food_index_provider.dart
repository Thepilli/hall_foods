import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_index_provider.g.dart';

@riverpod
class FoodIndex extends _$FoodIndex {
  @override
  int build() {
    return 0;
  }

  void onTap(int index) {
    state = index;
  }
}
