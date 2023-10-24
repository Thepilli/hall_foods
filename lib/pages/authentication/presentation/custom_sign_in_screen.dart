import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_providers.dart';

class CustomSignInScreen extends ConsumerWidget {
  const CustomSignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProviders = ref.watch(authProvidersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hall Foods'),
      ),
      body: SignInScreen(
        providers: authProviders,
      ),
    );
  }
}

class LabelOverrides extends DefaultLocalizations {
  const LabelOverrides();

  @override
  String get emailInputLabel => 'Váš email';

  @override
  String get passwordInputLabel => 'Vaše heslo';
  @override
  String get confirmPasswordInputLabel => 'Potvrďte vaše heslo';
  @override
  String get signInText => 'Prihlaste se';
  @override
  String get signInActionText => 'Prihlasit';
  @override
  String get cancelButtonLabel => 'Zpet';
  @override
  String get cancelLabel => 'Zpet';
  @override
  String get confirmPasswordDoesNotMatchErrorText => 'Zadana hesla se neshoduji';
  @override
  String get confirmPasswordIsRequiredErrorText => 'Heslo nemuze byt prazdne';
  @override
  String get continueText => 'Pokracovat';
  @override
  String get credentialAlreadyInUseErrorText => 'Tento uzivatel jiz existuje';
  @override
  String get checkEmailHintText => 'Zkontrolujte prosim svuji emailopvou adresu';
  @override
  String get deleteAccount => 'Smazat ucet';
  @override
  String get doneButtonLabel => 'Hotovo';
  @override
  String get dismissButtonLabel => 'Zrusit';
  @override
  String get emailIsNotVerifiedText => 'Tento ucet jeste nebyl overen, zkontrolujete prosim ssvoji emailou schranku';
  @override
  String get emailIsRequiredErrorText => 'Email nemuze byt prazdny';
  @override
  String get emailTakenErrorText => 'Tento uzivatel jiz existuje';
  @override
  String get enable => 'Povolit';
  @override
  String get forgotPasswordButtonLabel => 'Zapomeli jste heslo?';
  @override
  String get forgotPasswordViewTitle => 'Zapomenute heslo';
  @override
  String get forgotPasswordHintText =>
      'Zadejte svoji prihlasovaci emailovou adresu a ja vam poslu link na nastaveni noveho hesla';
  @override
  String get goBackButtonLabel => 'Zpet';
  @override
  String get isNotAValidEmailErrorText => 'Zadany email je neplatny';
  @override
  String get passwordResetEmailSentText => 'Odkaz na nastaveni hesla byl odeslan, zkontrolujte prosim svuji emailovou schranku';
  @override
  String get registerActionText => 'Registrace';
  @override
  String get registerHintText => 'Jeste nemate ucet? ';
  @override
  String get registerText => 'Registrujte se';
  @override
  String get signOutButtonText => 'Odhlasit se';
  @override
  String get unknownError => 'Neco se pokazilo';
  @override
  String get passwordIsRequiredErrorText => 'Heslo nemuze byt prazdne';
  @override
  String get profile => 'Profil';
  @override
  String get signInHintText => 'Uz mate ucet?';
}
