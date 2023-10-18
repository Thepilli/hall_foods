import 'package:flutter/material.dart';
import 'package:hall_foods/pages/my_order_page/my_order_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_provider.g.dart';

@riverpod
class MenuPage extends _$MenuPage {
  @override
  Widget build() {
    return const MyOrderPage();
  }

  void onMenuPress(Widget widget) {
    state = widget;
  }
}
