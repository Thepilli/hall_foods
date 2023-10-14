// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hall_foods/app/app_colors.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('20.9'), Text('of 128 GB')],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(value: 25, showTitle: false, color: AppColors.red, radius: 25),
  PieChartSectionData(value: 22, showTitle: false, color: AppColors.blue, radius: 22),
  PieChartSectionData(value: 15, showTitle: false, color: AppColors.yellow, radius: 15),
  PieChartSectionData(value: 10, showTitle: false, color: AppColors.green, radius: 10),
  PieChartSectionData(value: 8, showTitle: false, color: AppColors.grey, radius: 8),
];
