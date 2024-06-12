import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:flutter/material.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400, fontFamily: FontConstant.neueHaasLight),
          controller: TextEditingController(),
          decoration: InputDecoration(
              hintText: "Search Major",
              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              border: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              isDense: true,
              contentPadding: const EdgeInsets.only(left: 5, bottom: 5, right: 5),
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: FontConstant.natsRegular,
              ),
              prefixIconConstraints: const BoxConstraints(maxHeight: 24, maxWidth: 29),
              prefixIcon: Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.black,
                  )))),
    );
  }
}
