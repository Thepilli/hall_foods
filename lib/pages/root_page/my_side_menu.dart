import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/pages//alergens_page/alergens_page.dart';
import 'package:hall_foods/pages//food_list_page/food_list_page.dart';
import 'package:hall_foods/pages/my_order_page/my_order_page.dart';
import 'package:hall_foods/providers/page_provider.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';

class MySideMenu extends ConsumerWidget {
  const MySideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                ImagePath.hallfoods,
                height: 200,
                width: 200,
              ),
            ),
            DrawerTile(
                TileName: 'Moje Objednávka',
                TileIconUrl: ImagePath.calendar,
                onTap: () => ref.read(menuPageProvider.notifier).onMenuPress(const MyOrderPage())),
            const Divider(),
            DrawerTile(
                TileName: 'Menu',
                TileIconUrl: ImagePath.bento,
                onTap: () => ref.read(menuPageProvider.notifier).onMenuPress(const FoodMenuPage())),
            const Divider(),
            DrawerTile(
                TileName: 'Alergeny',
                TileIconUrl: ImagePath.allergens,
                onTap: () => ref.read(menuPageProvider.notifier).onMenuPress(const AlergensPage())),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String TileName;
  final String TileIconUrl;
  final VoidCallback onTap;

  const DrawerTile({
    super.key,
    required this.TileName,
    required this.TileIconUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(TileIconUrl),
      title: Text(
        TileName,
        style: context.textTheme.bodyMedium,
      ),
      onTap: onTap,
    );
  }
}
