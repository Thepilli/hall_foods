// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/models/alergens.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/extensions/widget_extension.dart';
import 'package:hall_foods/shared/widgets/jbox.dart';

class AlergensPage extends ConsumerWidget {
  const AlergensPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Seznam a popis Alergenu',
            style: context.textTheme.titleLarge,
          ),
          JBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: context.background, borderRadius: BorderRadius.circular(10)),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: alergensList.length,
                itemBuilder: (BuildContext context, int index) {
                  Alergen alergen = alergensList[index];
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset(
                          alergen.alergenImg,
                          height: 80,
                          width: 80,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              alergen.alergenName,
                              style: context.textTheme.bodyLarge,
                            ),
                            JBox(height: 10),
                            SizedBox(
                              width: context.sizeWidth * .7,
                              child: Text(
                                alergen.alergenDetail,
                                style: context.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ).paddingAll(20),
    );
  }
}
