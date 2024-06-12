import 'package:dormhub/Infrastructure/Constants/color_constant.dart';
import 'package:dormhub/Infrastructure/Constants/font_constant.dart';

import 'package:flutter/material.dart';

class CommonTopView extends StatelessWidget {
  const CommonTopView({super.key, required this.image, required this.text});
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 17),
        Container(
          margin:  const EdgeInsets.only(left: 10,right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                color: ColorConstant.greyColor.withOpacity(0.5),
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(11)),
            child:  Text(
              text,
              style: const TextStyle(fontSize: 14, fontFamily: FontConstant.neueHaasLight, fontWeight: FontWeight.w400, color: Colors.black),
            )),
      ],
    );
  }
}
