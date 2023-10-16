// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/models/alergens.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';

class AlergensPage extends ConsumerWidget {
  const AlergensPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Alergens',
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: alergensList.length,
              itemBuilder: (BuildContext context, int index) {
                Alergen alergen = alergensList[index];
                return Row(
                  children: [
                    Image.asset(
                      alergen.alergenImg,
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      alergen.alergenName,
                      style: context.textTheme.bodyLarge,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
