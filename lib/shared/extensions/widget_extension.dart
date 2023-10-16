import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget paddingHorizontal(double val) => Padding(padding: EdgeInsets.symmetric(horizontal: val), child: this);
  Widget paddingVertical(double val) => Padding(padding: EdgeInsets.symmetric(vertical: val), child: this);
  Widget paddingAll(double val) => Padding(padding: EdgeInsets.all(val), child: this);
  Widget paddingBottom(double val) => Padding(padding: EdgeInsets.only(bottom: val), child: this);
  Widget paddingLeft(double val) => Padding(padding: EdgeInsets.only(left: val), child: this);
}
