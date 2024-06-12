import 'package:dormhub/Infrastructure/Commons/app_routes.dart';
import 'package:dormhub/UI/OnBoardingSection/oboarding_screen.dart';
import 'package:dormhub/UI/OnBoardingSection/onboarding_binding.dart';
import 'package:dormhub/UI/SplashSection/splash_binding.dart';
import 'package:dormhub/UI/SplashSection/splash_screen.dart';
import 'package:get/get.dart';


class AppPages {
  static final routes = [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),   GetPage(
      name: RoutesConstants.onboardingScreen,
      page: () => const OnboardingScreen(),
      binding: OnboardinghBinding(),
    ),
  ];
}
