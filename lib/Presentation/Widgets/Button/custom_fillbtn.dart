
import 'package:flutter/material.dart';

import '../../../Constants/Colors/app_colors.dart';
class CustomFillBtn extends StatelessWidget {
  final String? btnText;
  final VoidCallback ? onpressed;
  const CustomFillBtn({this.btnText,this.onpressed,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:customFillBtnColor,
        ),
        height: 46,
        child: Center(
            child: Text('$btnText',style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF26A59A)
            ),)),
      ),
    );
  }
}
