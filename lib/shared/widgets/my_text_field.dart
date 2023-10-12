// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String? errorText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffix;
  const MyTextField({
    super.key,
    required this.label,
    this.errorText,
    this.obscureText = false,
    this.onChanged,
    this.controller,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        suffix: suffix,
        label: Text(label),
      ),
    );
  }
}
