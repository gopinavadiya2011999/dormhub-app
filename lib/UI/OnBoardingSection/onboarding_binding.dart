import 'package:dormhub/UI/OnBoardingSection/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardinghBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OnboardingController());
  }

}