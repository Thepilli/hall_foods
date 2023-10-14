// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/models/storage_detail.dart';
import 'package:hall_foods/pages/home_page/dashboard_page/components/header_row.dart';
import 'package:hall_foods/pages/home_page/dashboard_page/components/my_files_column.dart';
import 'package:hall_foods/pages/home_page/dashboard_page/components/storage_details.dart';
import 'package:hall_foods/responsive.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/widgets/jbox.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<StorageDetail> storageDetails = storageDetailList;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            HeaderRow(),
            JBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: MyFilesColumn(),
                ),
                JBox(width: 5),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 500,
                      decoration: BoxDecoration(
                        color: context.background,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: StorageDetails(storageDetails: storageDetails),
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
