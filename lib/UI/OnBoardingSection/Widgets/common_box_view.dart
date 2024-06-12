import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:dormhub/Infrastructure/Constants/image_constant.dart';
import 'package:dormhub/UI/OnBoardingSection/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CommonBoxView extends StatelessWidget {
  const CommonBoxView({super.key,  required this.index, required this.onTap});
  final int index;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init:OnboardingController(),
      builder: (controller) {
        return GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: SvgPicture.asset(controller.index.value==index?ImageConstant.yellowButtonFrame:ImageConstant.buttonFrame),
                ),
                const Positioned(
                    top: 28,
                    child: Text(
                      "Subject Name",
                      style: TextStyle(fontSize: 15, fontFamily: FontConstant.neueHaasMediu, fontWeight: FontWeight.w500, color: Colors.black),
                    ))
              ],
            ),
          ),
        );
      }
    );
  }
}
