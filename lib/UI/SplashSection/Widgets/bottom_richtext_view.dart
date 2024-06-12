import 'package:dormhub/Infrastructure/Constants/color_constant.dart';
import 'package:dormhub/Infrastructure/Constants/font_constant.dart';
import 'package:flutter/material.dart';

class BottomRichTextView extends StatelessWidget {
  const BottomRichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1,bottom:10 ),
      child: Column(
        children: [
          const Text("By signing in or creating an account, you agree to our", style: TextStyle(
              color: Colors.black,
              fontWeight:FontWeight.w500,fontSize:10 ,
              fontFamily: FontConstant.neueHaasLight
          ),),
          RichText(
              text: TextSpan(
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight:FontWeight.w500,fontSize:10 ,
                      fontFamily: FontConstant.neueHaasMediu
                  ),
                  children: const [
                    TextSpan(
                        text: 'Terms of Service '
                    ),
                    TextSpan(text: ' and ', style: TextStyle(
                        color: Colors.black,
                        fontWeight:FontWeight.w500,fontSize:10 ,
                        fontFamily: FontConstant.neueHaasLight
                    ),),
                    TextSpan(text: ' Privacy Policy.'),

                  ]
              ))
        ],
      ),
    );
  }
}
