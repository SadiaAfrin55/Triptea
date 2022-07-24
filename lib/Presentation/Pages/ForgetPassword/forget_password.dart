
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
class ForgetPasswordPage extends StatefulWidget {
  ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  bool emailSelection = false;
  bool phoneSelection = false;
  late int tapIndex;

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Forgot Password',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:boldTextColor
                        ),),
                        const SizedBox(height: 8),
                        const Text('Select which contact details should we use\nto reset your password',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color:lightTextColor
                        ),),
                        const SizedBox(height: 40),
                        InkWell(
                          onTap: (){
                            setState(() {
                              tapIndex = 1;
                              emailSelection = !emailSelection;
                              //Navigator.pushNamed(context, RESET_PAGE);
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(17),
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: emailSelection?unselectedBorderColor:selectedBorderColor,width: 1)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/icons/email.svg',
                                  color: emailSelection?unselectedBorderColor:Color(0xFF94A3B8),
                                ),
                                const SizedBox(width: 17,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Email',style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: boldTextColor
                                    ),),
                                    Text('Enter your email, we will send you\nconfirmation code',style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: lightTextColor
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              tapIndex = 2;
                              phoneSelection = !phoneSelection;
                              Navigator.pushNamed(context, SEND_CODE);
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(17),
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: phoneSelection?unselectedBorderColor:selectedBorderColor,width: 1)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/icons/phone.svg',
                                  color:phoneSelection?unselectedBorderColor:Color(0xFF94A3B8),
                                ),
                                const SizedBox(width: 17,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const[
                                    Text('Phone',style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: boldTextColor
                                    ),),
                                    Text('Enter your phone number, we will send\nyou confirmation code',style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: lightTextColor
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 82,),
                  const CustomBtn(
                    btnText: 'Continue',
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

