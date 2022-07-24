
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/Colors/app_colors.dart';
class CustomGoogleBtn extends StatelessWidget {
  final String? btnText;
  final VoidCallback ? onpressed;
  const CustomGoogleBtn({this.btnText,this.onpressed,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFE2E8F0),width: 1)
        ),
        height: 56,
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/google.svg'),
                const SizedBox(width: 8),
                Text('Continue with Google',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101520)
                ),),
              ],
            )),
      ),
    );
  }
}
