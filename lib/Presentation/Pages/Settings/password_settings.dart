
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../Widgets/TextField/password_textfield.dart';
class PasswordSettings extends StatefulWidget {
  const PasswordSettings({Key? key}) : super(key: key);

  @override
  _PasswordSettingsState createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {
  TextEditingController passwordController= TextEditingController();
  TextEditingController newpasswordController= TextEditingController();
  TextEditingController confirmpasswordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 1,
              title: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 1,
                        child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back,color: Color(0xFF1F2937),)
                        )),
                    const Expanded(
                      flex: 18,
                      child: Center(
                        child: Text('Password Setting',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF374151),
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              margin: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Current Password Here',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF292D32),
                        ),),
                        const SizedBox(height: 12,),
                        MaterialTextFieldPassword(lable: tr("Current Password"),controller:passwordController ,icon: Icon(Icons.vpn_key_outlined,color: Colors.black.withOpacity(0.3)), ),
                        const SizedBox(height: 30,),
                        Text('Enter Password Here',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF292D32),
                        ),),
                        const SizedBox(height: 12,),
                        MaterialTextFieldPassword(lable: tr("New Password"),controller:newpasswordController ,icon: Icon(Icons.vpn_key_outlined,color: Colors.black.withOpacity(0.3)), ),
                        const SizedBox(height: 12,),
                        MaterialTextFieldPassword(lable: tr("Confirm Password"),controller:confirmpasswordController ,icon: Icon(Icons.vpn_key_outlined,color: Colors.black.withOpacity(0.3)), ),
                      ],
                    ),
                  ),
                  CustomBtn(
                    btnText: 'Update Password',
                    onpressed: (){},
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
