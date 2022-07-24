
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../Constants/Colors/app_colors.dart';
import '../../../../Constants/Strings/app_strings.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
import '../../../Widgets/TextField/phone_textfield.dart';
class ResetPhonePage extends StatefulWidget {
  ResetPhonePage({Key? key}) : super(key: key);

  @override
  State<ResetPhonePage> createState() => _ResetPhonePageState();
}

class _ResetPhonePageState extends State<ResetPhonePage> {
  TextEditingController phoneController= TextEditingController();
  bool isSelected = true;
  int? tapIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              elevation: 0.5,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.black,),
              ),
            ),
            backgroundColor: Colors.white,
            body: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 16,right: 16,top: 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enter your phone number, we will send you\nthe confirmation code',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:lightTextColor
                          ),),
                          const SizedBox(height: 40),
                          MaterialPhoneTextField(readOnly: false,controller: phoneController,),
                        ],
                      ),
                    ),
                    //SizedBox(height: 340,),
                    CustomBtn(
                      btnText: 'Send Code Number',
                      onpressed: (){
                        Navigator.pushNamed(context, OTP_PAGE);
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
