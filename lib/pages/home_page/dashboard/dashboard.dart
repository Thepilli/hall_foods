// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/app/app_colors.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/models/alergens.dart';
import 'package:hall_foods/models/food.dart';
import 'package:hall_foods/providers/food_index_provider.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/extensions/widget_extension.dart';
import 'package:hall_foods/shared/widgets/jbox.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int foodIndex = ref.watch(foodIndexProvider);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            HeaderRow(),
            JBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                      itemCount: foodList.length,
                      itemBuilder: (BuildContext context, int index) {
                        Food food = foodList[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                              leading: Image.asset(food.foodImg),
                              title: Text(food.foodname),
                              subtitle: Text(food.alergens.toString()),
                              onTap: () => ref.read(foodIndexProvider.notifier).onTap(index)),
                        );
                      },
                    ),
                  ),
                ),
                JBox(width: 5),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
                    child: Column(
<<<<<<< HEAD
                      children: [],
=======
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          foodList[foodIndex].foodImg,
                          height: 200,
                        ),
                        Text('List of Alergens:'),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            itemCount: foodList[foodIndex].alergens.length,
                            itemBuilder: (BuildContext context, int index) {
                              Alergen alergen =
                                  alergensList.firstWhere((element) => element.alergenId == foodList[foodIndex].alergens[index]);
                              return Text(alergen.alergenName);
                            },
                          ).paddingHorizontal(30),
                        ),
                      ],
>>>>>>> ecc0b4b98d4f9a6101ec44c6d1c0956c4fc1d6d6
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
          'Dashboard',
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
