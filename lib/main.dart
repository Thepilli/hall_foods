import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'observers.dart';

void main() async {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarIconBrightness: Brightness.light,
  //     statusBarColor: Colors.transparent,
  //     systemNavigationBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(
    observers: [
      Observers(),
    ],
    child: const MyApp(),
  ));
}
