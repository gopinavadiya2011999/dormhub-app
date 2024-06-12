import 'package:dormhub/Infrastructure/Constants/image_constant.dart';
import 'package:dormhub/UI/OnBoardingSection/Widgets/common_box_view.dart';
import 'package:dormhub/UI/OnBoardingSection/Widgets/common_topview.dart';
import 'package:dormhub/UI/OnBoardingSection/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'searchbarview.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
                    image: ImageConstant.pageTwo,
                    text: 'Tell us your major and minors so we find your study squad! Get ready to link up and geek out. '),
                const SizedBox(height: 25),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            margin: const EdgeInsets.only(top: 4, right: 4),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 6,
                          left: 6,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black, width: 2)),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SearchBarView(),
                                  const SizedBox(height: 21),
                                  CommonBoxView(index: 0,onTap: () {
                                    controller.index.value=0;
                                    controller.update();
                                  },),
                                  CommonBoxView(index: 1,onTap: () {
                                    controller.index.value=1;
                                    controller.update();
                                  },),
                                  CommonBoxView(index: 2,onTap: () {
                                    controller.index.value=2;
                                    controller.update();
                                  },),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
