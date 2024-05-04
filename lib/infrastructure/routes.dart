import 'package:music_playlist/infrastructure/presentation/welcom.dart';
import 'package:music_playlist/onboarding.dart';
import 'package:music_playlist/splash_screen.dart';

final appRoutes = {
  AppRoutes.splash: (context) => const SplashScreen(),
  AppRoutes.onboarding: (context) => const Onboarding(),
  AppRoutes.welcome: (context) => const MyWidget(),
};

class AppRoutes {
  static const splash = '/splash';
  static const onboarding = '/onboarding';
  static const welcome = '/welcome';
}
