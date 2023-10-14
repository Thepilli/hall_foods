// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/pages/home_page/my_side_menu/my_side_menu.dart';
import 'package:hall_foods/providers/page_provider.dart';
import 'package:hall_foods/responsive.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget page = ref.watch(menuPageProvider);
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 1,
              child: MySideMenu(),
            ),
          Expanded(
            flex: 5,
            child: page,
          ),
        ],
      )),
    );
  }
}
