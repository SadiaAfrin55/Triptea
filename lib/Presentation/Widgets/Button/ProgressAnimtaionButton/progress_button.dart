

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

import '../../../../Constants/Colors/app_colors.dart';

class ProgressAnimatedButton extends StatefulWidget {

  final String text;
  final Function tap;
  final Color colors;
  final  ButtonState progressButtonState;
  const ProgressAnimatedButton({ required this.text, required this.tap, required this.colors, required this.progressButtonState});

  @override
  _ProgressAnimatedButtonState createState() => _ProgressAnimatedButtonState();
}

class _ProgressAnimatedButtonState extends State<ProgressAnimatedButton> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
          child: ProgressButton.icon(
            radius: 12.0,
              height: 55.0,
              maxWidth: 600.0,
              minWidth: 500.0,
              iconedButtons: {
                ButtonState.idle:
                IconedButton(
                    text: widget.text,
                    icon: Icon(Icons.arrow_forward,color: Colors.white),
                    color: btnColor),
                ButtonState.loading:
                IconedButton(
                    text: tr("Loading"),
                    color: Colors.deepPurple.shade700),
                ButtonState.fail:
                IconedButton(
                    text: tr("Failed"),
                    icon: Icon(Icons.cancel,color: Colors.white),
                    color: Colors.red.shade300),
                ButtonState.success:
                IconedButton(
                    text: tr("Success"),
                    icon: Icon(Icons.check_circle,color: Colors.white,),
                    color: Colors.green.shade400)
              },
              onPressed: widget.tap,
              state: widget.progressButtonState)
      ),
    );
  }


}