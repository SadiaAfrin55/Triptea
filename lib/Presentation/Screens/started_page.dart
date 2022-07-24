
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../Constants/Strings/app_strings.dart';
import '../Widgets/Button/custom_google_btn.dart';
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(left: 17,right: 17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //width: MediaQuery.of(context).size.width*0.9,
                  //height: MediaQuery.of(context).size.height*0.7,
                    child: Image.asset('assets/images/getstart.png',width: MediaQuery.of(context).size.width*0.9,)
                ),
               Column(
                 children: [

                   const Text('Let’s Get Started',
                     style: TextStyle(
                       fontSize: 24,
                       fontWeight: FontWeight.w700,
                       color: Color(0xFF101520),
                     ),
                   ),
                   const SizedBox(height: 8),
                   const Text('Sign up or log in to find out the\nbest car for you',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w500,
                       color: Color(0xFF94A3B8),
                     ),
                   ),
                   const SizedBox(height: 41),
                   CustomBtn(
                     btnText: 'Continue with Email',
                     onpressed: (){
                       Navigator.pushNamed(context, LOGIN_PAGE);
                     },
                   ),
                   const SizedBox(height: 16),
                   CustomGoogleBtn()
                 ],
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
