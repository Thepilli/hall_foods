import 'package:flutter/material.dart';
import 'package:hall_foods/pages/my_home_page/my_home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_provider.g.dart';

@riverpod
class MenuPage extends _$MenuPage {
  @override
  Widget build() {
    return const MyHomePage();
  }

  void onMenuPress(Widget widget) {
    state = widget;
  }
}
