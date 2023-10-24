import 'package:flutter/material.dart';
import 'package:hall_foods/pages/authentication/presentation/custom_profile_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_provider.g.dart';

@riverpod
class MenuPage extends _$MenuPage {
  @override
  Widget build() {
    return const CustomProfileScreen();
  }

  void onMenuPress(Widget widget) {
    state = widget;
  }
}
