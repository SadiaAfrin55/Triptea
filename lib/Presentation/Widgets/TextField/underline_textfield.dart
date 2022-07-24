
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Colors/app_colors.dart';

class underlineTextField extends StatelessWidget {
  final String lable;
  final bool readOnly;
  underlineTextField({required this.lable,required this.controller,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 56,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
          hintText: lable,
          contentPadding:
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color:textFieldBorder, width: 1.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
            BorderSide(color:Color(0xFFE6E6F4), width: 4.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:
            BorderSide(color: textFieldFocusBorder, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
