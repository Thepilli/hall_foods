import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hall_foods/pages/authentication/presentation/auth_providers.dart';

class CustomProfileScreen extends ConsumerWidget {
  const CustomProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProviders = ref.watch(authProvidersProvider);
    final userID = FirebaseAuth.instance.currentUser!.uid;
    return ProfileScreen(
      showMFATile: false,
      appBar: AppBar(
        title: Text(userID),
      ),
      providers: authProviders,
    );
  }
}
