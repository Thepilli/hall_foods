import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hall_foods/pages/authentication/data/firebase_auth_repository.dart';
import 'package:hall_foods/pages/authentication/presentation/custom_sign_in_screen.dart';
import 'package:hall_foods/router/go_router_refresh_stream.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pages/root_page/root_page.dart';

part 'app_router.g.dart';

enum Routes { home, signin }

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return GoRouter(
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: false,
    redirect: (context, state) {
      final isLoggedIn = authRepository.currentUser != null;

      if (isLoggedIn) {
        return '/home';
      } else {
        return '/signin';
      }
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
        path: '/home',
        name: Routes.home.name,
        builder: (context, state) => RootPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/signin',
        name: Routes.signin.name,
        builder: (context, state) => CustomSignInScreen(
          key: state.pageKey,
        ),
      ),

      // GoRoute(
      //   path: '/detail',
      //   name: Routes.detail.name,
      //   pageBuilder: (context, state) {
      //     final book = state.extra as Book;
      //     return MaterialPage(
      //       key: state.pageKey,
      //       child: DetailPage(book: book),
      //     );
      //   },
      // ),
    ],
  );
}
