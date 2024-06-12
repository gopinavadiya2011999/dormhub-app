import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:flutter/material.dart';

class CommonTextFiled extends StatelessWidget {
  const CommonTextFiled({super.key, required this.controller, this.keyBoardType});
  final TextEditingController controller;
  final TextInputType? keyBoardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: keyBoardType ?? const TextInputType.numberWithOptions(signed: true),
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontFamily: FontConstant.neueHaasRoman, fontSize: 30),
      decoration: const InputDecoration(
        isDense: true,
          contentPadding: EdgeInsets.zero,
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontFamily: FontConstant.neueHaasRoman, fontSize: 30),
          hintText: ""),
    );
  }
}
