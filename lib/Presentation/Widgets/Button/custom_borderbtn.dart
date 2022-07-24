
import 'package:flutter/material.dart';

import '../../../Constants/Colors/app_colors.dart';
class CustomBorderBtn extends StatelessWidget {
  final String? btnText;
  final VoidCallback ? onpressed;
  const CustomBorderBtn({this.btnText,this.onpressed,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFF94A3B8),width: 1),
          color:Colors.white,
        ),
        height: 46,
        child: Center(
            child: Text('$btnText',style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF94A3B8)
            ),)),
      ),
    );
  }
}
