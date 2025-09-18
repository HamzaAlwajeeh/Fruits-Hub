// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Fruit`
  String get firstAppName {
    return Intl.message('Fruit', name: 'firstAppName', desc: '', args: []);
  }

  /// `HUB`
  String get secondAppName {
    return Intl.message('HUB', name: 'secondAppName', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Welcom To `
  String get onBoarding_1_title {
    return Intl.message(
      'Welcom To ',
      name: 'onBoarding_1_title',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and highest quality.`
  String get onBoarding_1_SubTitle {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and highest quality.',
      name: 'onBoarding_1_SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onBoarding_2_title {
    return Intl.message(
      'Search and Shop',
      name: 'onBoarding_2_title',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest, carefully selected fruits. Check out the details, photos, and reviews to make sure you're choosing the perfect fruit.`
  String get onBoarding_2_SubTitle {
    return Intl.message(
      'We offer you the finest, carefully selected fruits. Check out the details, photos, and reviews to make sure you\'re choosing the perfect fruit.',
      name: 'onBoarding_2_SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onBoardingButton {
    return Intl.message(
      'Get Started',
      name: 'onBoardingButton',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Forgot Your Password? `
  String get ForgotPassword {
    return Intl.message(
      'Forgot Your Password? ',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get DontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'DontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get Or {
    return Intl.message('Or', name: 'Or', desc: '', args: []);
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message('Sign Up', name: 'SignUp', desc: '', args: []);
  }

  /// `Continue with Google`
  String get ContinueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'ContinueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get ContinueWithApple {
    return Intl.message(
      'Continue with Apple',
      name: 'ContinueWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get ContinueWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'ContinueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get NewAccount {
    return Intl.message('New Account', name: 'NewAccount', desc: '', args: []);
  }

  /// `Full Name`
  String get FullName {
    return Intl.message('Full Name', name: 'FullName', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
