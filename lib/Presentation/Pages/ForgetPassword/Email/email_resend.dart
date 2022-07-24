
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../Constants/Colors/app_colors.dart';
class EmailResendPage extends StatelessWidget {
  const EmailResendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/emailResend.svg'),
                  const SizedBox(height: 40,),
                  const Text('Almost done!',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color:boldTextColor
                  ),),
                  const SizedBox(height: 8),
                  const Text('We''ve sent an email to\n\nPlease check your inbox and follow instructions to reset your password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:lightTextColor
                    ),),
                  const SizedBox(height: 186),
                  CustomBtn(btnText: 'Resend',onpressed: (){

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
