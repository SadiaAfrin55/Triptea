
import 'package:flutter/material.dart';

import '../../../Constants/Colors/app_colors.dart';
class CustomBtn extends StatelessWidget {
  final String? btnText;
  final VoidCallback ? onpressed;
  const CustomBtn({this.btnText,this.onpressed,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:btnColor,
        ),
        height: 56,
        child: Center(
            child: Text('$btnText',style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),)),
      ),
    );
  }
}
