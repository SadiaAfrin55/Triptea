
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../Constants/Colors/app_colors.dart';
import '../../../../Constants/Strings/app_strings.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController emilController= TextEditingController();
  bool isSelected = true;
  int? tapIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 16,right: 16,top: 70),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Reset Password',style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color:boldTextColor
                          ),),
                          const SizedBox(height: 8),
                          Text('Enter your email, we will send you the\nconfirmation code',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:lightTextColor
                          ),),
                          const SizedBox(height: 40),
                          MaterialTextField(lable:tr("Email"),readOnly: false,icon: Icon(Icons.email_outlined,color: Colors.black.withOpacity(0.3),), controller:emilController ,),
                        ],
                      ),
                    ),
                    const SizedBox(height:315,),
                    CustomBtn(
                      btnText: 'Continue',
                      onpressed: (){
                        Navigator.pushNamed(context, RESEND_PAGE);
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
