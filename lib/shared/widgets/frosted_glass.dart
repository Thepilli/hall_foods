import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final double margin;
  final double padding;
  final Widget child;
  final Color color;

  const FrostedGlass({
    super.key,
    required this.height,
    required this.width,
    this.radius = 30,
    required this.child,
    this.color = Colors.white,
    this.margin = 0,
    this.padding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        height: height,
        width: width,
        child: Stack(
          children: [
            //blur
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(),
            ),
            //gradient
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                border: Border.all(color: color.withOpacity(.23)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    color.withOpacity(.15),
                    color.withOpacity(.05),
                  ],
                ),
              ),
            ),
            //child
            child
          ],
        ),
      ),
    );
  }
}
