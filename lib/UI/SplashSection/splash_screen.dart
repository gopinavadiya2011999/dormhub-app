import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:dormhub/Infrastructure/Constants/image_constant.dart';
import 'package:dormhub/UI/SplashSection/Widgets/bottom_richtext_view.dart';
import 'package:dormhub/UI/SplashSection/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.089, bottom: MediaQuery.of(context).size.width * 0.05),
                  child: Image.asset(ImageConstant.splashText, width: 125, height: 38)),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  ImageConstant.splashBg,
                  fit: BoxFit.fill,
                ),
              ),
              const GetStartedButton(),
              const Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontFamily: FontConstant.neueHaasMediu, fontSize: 13, fontWeight: FontWeight.w500),
              ),
              const BottomRichTextView()
            ],
          ),
        ),
      ),
    );
  }
}
