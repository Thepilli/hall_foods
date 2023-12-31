// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hall_foods/app/app_colors.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/extensions/widget_extension.dart';

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
