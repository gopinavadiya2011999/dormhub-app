import 'package:dormhub/UI/OnBoardingSection/Widgets/page_one.dart';
import 'package:dormhub/UI/OnBoardingSection/Widgets/page_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();

  TextEditingController countryCodeController = TextEditingController(text: "US +1");
  RxInt pageIndex = 0.obs;
  RxDouble progressValue = 0.2.obs;
  TextEditingController phoneController = TextEditingController();
  RxInt  index = 0.obs;

  List<Widget> widgetList = [const PageOne(), const PageTwo()];
}
