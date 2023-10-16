// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/models/week_menu.dart';
import 'package:hall_foods/providers/weekly_menu_provider.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WeekMenu nextWeek = ref.watch(weeklyMenuProvider);

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'My home page',
              style: context.textTheme.titleLarge,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: context.sizeHeight * .8,
                    decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          'This week',
                          style: context.textTheme.titleLarge,
                        ),
                        MyDay(day: 'Monday', date: 'October 16th', food: null),
                        MyDay(day: 'Tuesday', date: 'October 17th', food: null),
                        MyDay(day: 'Wednesday', date: 'October 18th', food: null),
                        MyDay(day: 'Thursday', date: 'October 19th', food: null),
                        MyDay(day: 'Friday', date: 'October 20th', food: null),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: context.sizeHeight * .8,
                    decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          'Next Week',
                          style: context.textTheme.titleLarge,
                        ),
                        MyDay(day: 'Monday', date: 'October 23rd', food: nextWeek.mondayLunch),
                        MyDay(day: 'Tuesday', date: 'October 24th', food: nextWeek.tuesdayLunch),
                        MyDay(day: 'Wednesday', date: 'October 25th', food: nextWeek.wednesdayLunch),
                        MyDay(day: 'Thursday', date: 'October 26th', food: nextWeek.thursdayLunch),
                        MyDay(day: 'Friday', date: 'October 27th', food: weekMenu.fridayLunch),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyDay extends ConsumerWidget {
  final String day;
  final String date;
  final Food? food;

  const MyDay({
    super.key,
    required this.day,
    required this.date,
    required this.food,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 100,
      width: context.sizeWidth * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: context.primary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                day,
                style: context.textTheme.titleLarge,
              ),
              Text(
                date,
                style: context.textTheme.titleSmall,
              ),
              Text(
                food?.foodname ?? 'You have not picked any lunch yet',
                style: context.textTheme.bodyMedium,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.edit),
              InkWell(
                  onTap: () {
                    print(food?.foodname);
                    return ref.read(weeklyMenuProvider.notifier).removeFromMenu(food);
                  },
                  child: Icon(Icons.delete)),
            ],
          )
        ],
      ),
    );
  }
}
