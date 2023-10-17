// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hall_foods/app/app_colors.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/models/week_menu.dart';
import 'package:hall_foods/providers/weekly_menu_provider.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/extensions/widget_extension.dart';

class MyOrderPage extends ConsumerWidget {
  const MyOrderPage({super.key});

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
                        MyDay(day: 'Friday', date: 'October 27th', food: nextWeek.fridayLunch),
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
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(15),
      height: 100,
      width: context.sizeWidth * .35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: context.primary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.sizeWidth * .25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      day,
                      style: context.textTheme.titleLarge,
                    ),
                    Text(
                      date,
                      style: context.textTheme.bodyLarge,
                    ),
                  ],
                ).paddingBottom(10),
                Text(
                  food?.foodname ?? 'You have not picked any lunch',
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: (food != null && food?.foodId != '') ? AppColors.completed : AppColors.notCompleted),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (food?.foodId == '' || food?.foodId == null)
                Image.asset(
                  ImagePath.add_lunch,
                  height: 50,
                  width: 50,
                ),
              if (food != null && food?.foodId != '') Icon(Icons.edit),
              if (food != null && food?.foodId != '')
                InkWell(
                    onTap: () => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Do you really want to remove \n${food?.foodname}'),
                            actions: [
                              IconButton(
                                splashRadius: 20,
                                onPressed: () => context.pop(),
                                icon: Icon(Icons.close),
                              ),
                              IconButton(
                                splashRadius: 20,
                                onPressed: () {
                                  context.pop();
                                  ref.read(weeklyMenuProvider.notifier).removeFromMenu(food);
                                },
                                icon: Icon(Icons.check),
                              ),
                            ],
                          ),
                        ),
                    child: Icon(Icons.delete)),
            ],
          )
        ],
      ),
    );
  }
}
