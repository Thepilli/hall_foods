// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/app/app_colors.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/models/alergens.dart';
import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/models/week_menu.dart';
import 'package:hall_foods/providers/food_index_provider.dart';
import 'package:hall_foods/providers/food_menu_day_provider.dart';
import 'package:hall_foods/providers/weekly_menu_provider.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/extensions/widget_extension.dart';
import 'package:hall_foods/shared/widgets/jbox.dart';

enum WeekDay { Monday, Tuesday, Wednesday, Thursday, Friday }

class FoodMenuPage extends ConsumerWidget {
  const FoodMenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WeekMenu nextWeek = ref.watch(weeklyMenuProvider);

    String foodId = ref.watch(foodIndexProvider);
    String selectedDay = ref.watch(foodMenuDayProvider);

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            HeaderRow(),
            JBox(height: 15),
            Row(children: [
              ...List.generate(
                  WeekDay.values.length,
                  (index) => ElevatedButton(
                      onPressed: () =>
                          ref.read(foodMenuDayProvider.notifier).changeSelectedDay(WeekDay.values[index].name.toString()),
                      child: Text(WeekDay.values[index].name.toString())))
            ]),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Container(
                        height: context.sizeHeight * .8,
                        decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
                        child: ListView.builder(
                          itemCount: foodList.where((element) => element.dayAvailable == selectedDay).toList().length,
                          itemBuilder: (BuildContext context, int index) {
                            List<Food> dailyMenu = foodList.where((element) => element.dayAvailable == selectedDay).toList();
                            Food food = dailyMenu[index];
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ListTile(
                                trailing: IconButton(
                                    onPressed: () => ref.read(weeklyMenuProvider.notifier).updateMenu(food),
                                    icon: Icon(Icons.abc)),
                                leading: Image.asset(food.foodImg),
                                title: Row(
                                  children: [
                                    Text(food.foodname, style: context.textTheme.bodyMedium),
                                    JBox(width: 4),
                                    if (food.isVegetarian)
                                      Image.asset(
                                        'assets/food/vegetarian.png',
                                        height: 25,
                                        width: 25,
                                      )
                                  ],
                                ),
                                subtitle: Text(food.alergens.toString()),
                                onTap: () {
                                  ref.read(foodIndexProvider.notifier).onTap(food.foodId);
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                JBox(width: 5),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: context.sizeHeight * .8,
                    decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          foodList.firstWhere((element) => element.foodId == foodId).foodImg,
                          height: 200,
                        ),
                        Text('List of Alergens:'),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            itemCount: foodList.firstWhere((element) => element.foodId == foodId).alergens.length,
                            itemBuilder: (BuildContext context, int index) {
                              Alergen alergen = alergensList.firstWhere((element) =>
                                  element.alergenId ==
                                  foodList.firstWhere((element) => element.foodId == foodId).alergens[index]);
                              return Text(alergen.alergenName);
                            },
                          ).paddingHorizontal(30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'FoodMenuPage',
          style: context.textTheme.titleLarge,
        ),
        const Spacer(),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: context.primary),
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const Icon(
                  Icons.search,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.formFillLight,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(ImagePath.avatar),
              ).paddingHorizontal(10),
              const Text('Jiri Pillar'),
              const Icon(Icons.keyboard_arrow_down)
            ],
          ),
        )
      ],
    );
  }
}
