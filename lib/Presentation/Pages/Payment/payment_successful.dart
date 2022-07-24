
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Screens/SplashScreen/splash_screen.dart';
import '../main_screen.dart';
class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/paymentsuccess.svg'),
                          const SizedBox(height: 40,),
                          const Text('Successfully Transfered',style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color:boldTextColor
                          ),),
                          const SizedBox(height: 8),
                          const Text('Your balance transfered to your\nTripTea Balance.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:lightTextColor
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),

                CustomBtn(btnText: 'Go Home',onpressed: (){
                  Navigator.pushReplacement(context, PageTransition(MainScreen()));
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
