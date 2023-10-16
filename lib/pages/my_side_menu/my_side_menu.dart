import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/pages//alergens_page/alergens_page.dart';
import 'package:hall_foods/pages//food_list_page/food_list_page.dart';
import 'package:hall_foods/pages/my_home_page/my_home_page.dart';
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
              child: Image.asset(ImagePath.rect_trans),
            ),
            DrawerTile(
                TileName: 'MyHomePage',
                TileIconData: Icons.home,
                onTap: () => ref.read(menuPageProvider.notifier).onMenuPress(const MyHomePage())),
            DrawerTile(
                TileName: 'Menu',
                TileIconData: Icons.home,
                onTap: () => ref.read(menuPageProvider.notifier).onMenuPress(const FoodMenuPage())),
            DrawerTile(
                TileName: 'Alergens',
                TileIconData: Icons.home,
                onTap: () => ref.read(menuPageProvider.notifier).onMenuPress(const AlergensPage())),
            DrawerTile(TileName: 'Dashboard', TileIconData: Icons.home, onTap: () {}),
            DrawerTile(TileName: 'Dashboard', TileIconData: Icons.home, onTap: () {}),
            DrawerTile(TileName: 'Dashboard', TileIconData: Icons.home, onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String TileName;
  final IconData TileIconData;
  final VoidCallback onTap;

  const DrawerTile({
    super.key,
    required this.TileName,
    required this.TileIconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(TileIconData),
      title: Text(
        TileName,
        style: context.textTheme.bodyMedium,
      ),
      onTap: onTap,
    );
  }
}
