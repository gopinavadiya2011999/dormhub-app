import 'package:dormhub/Infrastructure/Commons/app_routes.dart';
import 'package:dormhub/Infrastructure/Constants/color_constant.dart';
import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      onTap: () {
        Get.toNamed(RoutesConstants.onboardingScreen);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.only(bottom: 4),
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.145, left: MediaQuery.of(context).size.width * 0.145, top: 38, bottom: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 9),
          decoration: BoxDecoration(
              color: ColorConstant.primaryColor, borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.black, width: 2)),
          width: double.infinity,
          child: const Text(
            "Get Started",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontFamily: FontConstant.neueHaasMediu, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
