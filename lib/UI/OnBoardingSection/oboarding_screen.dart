import 'package:dormhub/Infrastructure/Constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding_controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:  EdgeInsets.only(top: 8, left: 14, right: MediaQuery.of(context).size.width*0.13),
                    child: Row(
                      children: [
                        GestureDetector(
                           onTap: () {
                             Get.back();
                           },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(4),
                            margin: const EdgeInsets.only(left: 12),
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                              valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                              value: controller.progressValue.value,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: controller.pageController,
                      onPageChanged: (value) {
                        controller.pageIndex.value = value;
                        if(controller.pageIndex.value==1){
                          controller.progressValue.value=0.8;
                        }else{
                          controller.progressValue.value=0.2;
                        }
                        controller.update();
                      },
                      itemCount: controller.widgetList.length,
                      itemBuilder: (context, index) {

                        return controller.widgetList[index];
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
