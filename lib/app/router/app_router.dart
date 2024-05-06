import 'package:charity_app/features/auth_module/presentation/sign_in_screen.dart';
import 'package:charity_app/features/auth_module/presentation/sign_up_screen.dart';
import 'package:charity_app/features/auth_module/presentation/verification_screen.dart';
import 'package:charity_app/features/base_app.dart';
import 'package:charity_app/features/campaigns_module/presentation/campaign_screen.dart';
import 'package:charity_app/features/dashboard_module/presentation/dashboard_screen.dart';
import 'package:charity_app/features/home_module/presentation/home_screen.dart';
import 'package:charity_app/features/settings_module/presentation/payment_setting_screen.dart';
import 'package:charity_app/features/splash_module/presentation/splash_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends Equatable {
  static const String splash = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String verification = '/verification';

  static const String home = '/home-screen';
  static const String baseApp = '/base-app';

  @override
  List<Object?> get props => [splash, signIn, signUp, verification, home, baseApp];
}

final router = GoRouter(
  debugLogDiagnostics: kDebugMode || kProfileMode,
  routes: [
    GoRoute(
      path: '/',
      name: AppRouter.splash,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/signIn',
      name: AppRouter.signIn,
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      path: '/signUp',
      name: AppRouter.signUp,
      builder: (context, state) => SignUpScreen(),
    ),
    GoRoute(
      path: '/verification',
      name: AppRouter.verification,
      builder: (context, state) => VerificationScreen(),
    ),
    GoRoute(
      path: '/base-app',
      name: AppRouter.baseApp,
      builder: (context, state) => BaseApp(),
    ),
  ],
);