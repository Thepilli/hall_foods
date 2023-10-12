import 'package:flutter/material.dart';
import 'package:hall_foods/app/app_constants.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';

class MySideMenu extends StatelessWidget {
  const MySideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(ImagePath.rect_trans),
            ),
            DrawerTile(TileName: 'Dashboard', TileIconData: Icons.home, onTap: () {}),
            DrawerTile(TileName: 'Dashboard', TileIconData: Icons.home, onTap: () {}),
            DrawerTile(TileName: 'Dashboard', TileIconData: Icons.home, onTap: () {}),
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
