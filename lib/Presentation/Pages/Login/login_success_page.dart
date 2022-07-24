
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../Constants/Colors/app_colors.dart';
import '../../../../Constants/Strings/app_strings.dart';
class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/success.svg'),
                      const Text('Hi! Welcome Back',style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color:boldTextColor
                      ),),
                      const SizedBox(height: 8),
                      const Text('Nice to see you again. Let’s find your\nfavorite car!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color:lightTextColor
                        ),),
                    ],
                  ),
                ),
                CustomBtn(btnText: 'Go to Home',onpressed: (){
                  Navigator.pushNamed(context, HOME_PAGE);
                },),
              ],
            ),
            ),
          ),
        ),
      );
  }
}
