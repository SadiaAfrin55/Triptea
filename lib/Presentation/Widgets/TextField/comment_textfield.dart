
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Colors/app_colors.dart';

class CommentTextField extends StatelessWidget {

  final bool readOnly;
  CommentTextField({required this.controller,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        readOnly: readOnly,
        controller: controller,
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color:btnColor, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: btnColor, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
      ),
    );
  }
}
