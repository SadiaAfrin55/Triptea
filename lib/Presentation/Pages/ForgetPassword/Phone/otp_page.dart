

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:triptea/Bloc/Login/login_cubit.dart';
import 'package:triptea/Constants/Colors/app_colors.dart';

import '../../../../Constants/Strings/app_strings.dart';
import '../../../../Service/LocalDataBase/localdata.dart';
import '../../../Widgets/Button/custom_btn.dart';

class OtpPage extends StatefulWidget {
  final String? mobile;
  const OtpPage({Key? key, this.mobile}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _globalkey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";
  LocalDataGet _localDataGet = LocalDataGet();
  String? token;
  String? role;
  bool validation=false;
  String currentText = "";
  getToken() async {
    var tokenx = await _localDataGet.getData();
    setState(() {
      token = tokenx.get('token');
      role = tokenx.get('role');
      // Logger().d(token);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.5,
                leading: BackButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                )
            ),
            body: BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
                // if(state is OtpVerify){
                //   final data=(state as OtpVerify).done;
                //   setState(() {
                //     validation=false;
                //   });
                //   if(data["message"]=="Otp Verification Successful"){
                //     showAlertDialog(context);
                //   }else{
                //     showWarningAlertDialog(context);
                //   }
                //   //
                // }
              },
              child: Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Verification Code",style: TextStyle(color: Colors.black,fontSize: 24)).tr(),
                        SizedBox(height: 8,),
                        widget.mobile!=null?Text(tr('Please enter verification code, we sent it to')+" "+widget.mobile!,style: TextStyle(color: const Color(0xFF7A7A7A),fontSize: 15),):Text("Has no mobile number",style: TextStyle(color: Color(0xFF7A7A7A),fontSize: 15),),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:Form(
                                  key: _globalkey,
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 30),
                                      child: PinCodeTextField(
                                        backgroundColor: Colors.white,
                                        appContext: context,
                                        pastedTextStyle: TextStyle(
                                          color: btnColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        length: 4,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        // obscuringWidget: FlutterLogo(
                                        //   size: 24,
                                        // ),
                                        blinkWhenObscuring: false,
                                        animationType: AnimationType.fade,
                                        validator: (v) {

                                        },
                                        pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.box,
                                          borderRadius: BorderRadius.circular(12),
                                          fieldHeight: 56,
                                          fieldWidth: 56,
                                          selectedColor: btnColor,
                                          inactiveColor: Color(0xFFE2E8F0),
                                          inactiveFillColor: Colors.white,
                                          activeFillColor: Colors.white,
                                          selectedFillColor: Colors.white,
                                        ),
                                        cursorColor: Colors.black,
                                        animationDuration: Duration(milliseconds: 300),
                                        enableActiveFill: true,
                                        controller: textEditingController,
                                        keyboardType: TextInputType.number,
                                        onCompleted: (v) {
                                          print("Completed");

                                        },
                                        // onTap: () {
                                        //   print("Pressed");
                                        // },
                                        onChanged: (value) {
                                          print(value);
                                          setState(() {
                                            currentText = value;
                                          });
                                        },
                                        beforeTextPaste: (text) {
                                          print("Allowing to paste $text");
                                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                          //but you can show anything you want here, like your pop up saying wrong paste format or etc

                                          return true;
                                        },
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: (){
                                    setState(() {
                                      validation=true;
                                    });
                                    //BlocProvider.of<LoginCubit>(context).otpResend(token,widget.mobile);
                                  },
                                  child: Text("Resend Code in ",style: TextStyle(color: Color(0xFF7A7A7A),fontSize: 15),).tr()),
                              buildTimer(),
                            ],
                          )
                        ],
                      ),
                    ),

                    validation?Center(child: CircularProgressIndicator(),): CustomBtn(
                      btnText: 'Verify',
                      onpressed: (){
                        if (_globalkey.currentState!.validate()) {
                          setState(() {
                            validation=true;
                          });
                          //BlocProvider.of<LoginCubit>(context).otpVerify(token,textEditingController.text,widget.mobile);
                        }
                        Navigator.pushNamed(context, NEW_PASSWORD_PAGE);
                      },
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }


  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        content:  Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 350,
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: SvgPicture.asset('assets/icons/success.svg'),
                  ),
                  Center(
                    child: Text('Done!!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ).tr(),
                  ),
                  SizedBox(height: 15),
                  Text('You have successfully completed your survey',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.center,
                  ).tr(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 23.0),
                    child: CustomBtn(
                      btnText: 'Verify',
                      onpressed: (){},
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showWarningAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        content:  Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 350,
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: SvgPicture.asset('assets/icons/success.svg'),
                  ),
                  Center(
                    child: Text('Warning!!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ).tr(),
                  ),
                  SizedBox(height: 15),
                  Text('Your otp was wrong',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ).tr(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: CustomBtn(
                      btnText: 'ok',
                      onpressed: (){
                        textEditingController.text="";
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: btnColor),
          ),
        ),
      ],
    );
  }
}