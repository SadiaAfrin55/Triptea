
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String lable;
  final Icon prefIcon;
  final bool readOnly;
  SearchTextField({required this.lable,required this.controller,required this.readOnly,required this.prefIcon});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 44,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        readOnly: readOnly,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText:lable,
          border: InputBorder.none,
          prefixIcon: prefIcon,
          filled: true,
          fillColor: const Color(0xFFE2E8F0).withOpacity(0.6),
        ),
      ),
    );
  }
}
