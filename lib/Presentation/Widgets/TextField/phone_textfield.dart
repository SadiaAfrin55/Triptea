
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../Constants/Colors/app_colors.dart';

class MaterialPhoneTextField extends StatelessWidget {
  final bool readOnly;
  MaterialPhoneTextField({required this.controller,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: textFieldBorder,width: 1)
      ),
      padding: EdgeInsets.only(left: 16),
      height: 56,
      child: InternationalPhoneNumberInput(
        onInputChanged: (value){},
        cursorColor: Colors.black,
        formatInput: false,
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET
        ),
        inputDecoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Phone number',
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF94A3B8)
          )
        ),
      ),
    );
  }
}
