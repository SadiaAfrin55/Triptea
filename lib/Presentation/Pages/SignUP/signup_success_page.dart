
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Colors/app_colors.dart';
class SignupSuccessPage extends StatelessWidget {
  const SignupSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/signupSuccess.svg'),
                        const SizedBox(height: 40,),
                        const Text('Successfully Registered',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:boldTextColor
                        ),),
                        const SizedBox(height: 8),
                        const Text('Your account has been registered\nsuccesfully, now let’s enjoy Car\nfeatures!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:lightTextColor
                          ),),
                      ],
                    ),
                  ),
                  CustomBtn(btnText: 'Continue',onpressed: (){

                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
