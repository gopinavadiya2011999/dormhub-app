import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:dormhub/Infrastructure/Constants/image_constant.dart';
import 'package:dormhub/UI/OnBoardingSection/Widgets/common_text_field.dart';
import 'package:dormhub/UI/OnBoardingSection/Widgets/common_topview.dart';
import 'package:dormhub/UI/OnBoardingSection/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (controller) {
          return Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTopView(
                    image: ImageConstant.pageOne,
                    text: 'Safety is our top priority for our community at Dormhub. We want to provide a space for authentic connection.'),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 10,right: 10),
                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CommonTextFiled(
                              keyBoardType: TextInputType.text,
                              controller: controller.countryCodeController,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                              flex: 3,
                              child: CommonTextFiled(
                                controller: controller.phoneController,
                              ))
                        ],
                      ),
                      const SizedBox(height: 19),
                      const Text('Dormhub will send you a text with a verification code. Message and data may apply.',
                          style: TextStyle(fontSize: 10, fontFamily: FontConstant.neueHaasLight, fontWeight: FontWeight.w400, color: Colors.black)),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          controller.pageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic);
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(ImageConstant.yellowButtonNext),
                            const Positioned(
                                top: 18,
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontSize: 12, fontFamily: FontConstant.neueHaasBold, fontWeight: FontWeight.w600, color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          );
        });
  }
}
