import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hall_foods/pages/authentication/presentation/custom_sign_in_screen.dart';

import '../router/app_router.dart';
import '../shared/util/theme_provider.dart';
import 'app_constants.dart';
import 'app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkThemeSwitchProvider);
    final goRouter = ref.watch(goRouterProvider);
    final screenSize = MediaQuery.of(context).size;
    debugPrint(screenSize.toString());
    return ScreenUtilInit(
        designSize: const Size(411.4, 843.4),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            title: AppStrings.appName,
            darkTheme: AppTheme.darkTheme,
            theme: AppTheme.lightTheme,
            // themeMode: ThemeMode.dark,
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            routerDelegate: goRouter.routerDelegate,
            routeInformationParser: goRouter.routeInformationParser,
            routeInformationProvider: goRouter.routeInformationProvider,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              // Creates an instance of FirebaseUILocalizationDelegate with overridden labels
              FirebaseUILocalizations.withDefaultOverrides(const LabelOverrides()),

              // Delegates below take care of built-in flutter widgets
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,

              // This delegate is required to provide the labels that are not overridden by LabelOverrides
              FirebaseUILocalizations.delegate,
            ],
          );
        });
  }
}
