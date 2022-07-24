import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:text_divider/text_divider.dart';
import 'package:triptea/Constants/Colors/app_colors.dart';
import 'package:triptea/Presentation/Pages/Login/login_success_page.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_google_btn.dart';
import '../../../Bloc/Login/login_cubit.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../../Service/LoginService/save_user_data_local.dart';
import '../../Widgets/Button/ProgressAnimtaionButton/progress_button.dart';
import '../../Widgets/TextField/normal_textfield.dart';
import '../../Widgets/TextField/password_textfield.dart';
import '../../Widgets/TextField/phone_textfield.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isLoading = false;
  TextEditingController emilController= TextEditingController();
  TextEditingController nameController= TextEditingController();
  TextEditingController phoneController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController confirmpasswordController= TextEditingController();
  final _globalkey = GlobalKey<FormState>();

  late bool circule;
  late bool validate;

  ButtonState progressButtonState = ButtonState.idle;

  //local dataBase
  Box? users;
  LoginDataSave? loginDataSave;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users =Hive.box('users');
    loginDataSave=LoginDataSave();

  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener}
        if(state is LoginUser){
          setState(() {
            progressButtonState = ButtonState.idle;
          });

          final data=(state as LoginUser).login;

          if(data!.status=="fail"){
            // ignore: deprecated_member_use
            print(data.status);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("User id and password are mismatched").tr(),
              ),
            );
          }else{
            loginDataSave?.storeTokenUserdata(users,data.token, data.user!.id, data.user!.name, data.user!.email, data.user!.role);
            Navigator.pushNamed(context, LOGIN_SUCCESS);
          }
        }
      },
      child: Container(
        color: Colors.white,
        child: SafeArea(
          maintainBottomViewPadding: true,
          minimum: EdgeInsets.zero,
          child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: Container(
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Form(
                  key: _globalkey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text('Create Account',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:boldTextColor
                        ),),
                        const SizedBox(height: 8),
                        Text('Sign up and get started',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color:lightTextColor
                        ),),
                        const SizedBox(height: 34),
                        MaterialTextField(lable:tr("Name"),readOnly: false,icon: Icon(Icons.person_outline,color: Colors.black.withOpacity(0.3),), controller:nameController ,),
                        const SizedBox(height: 12,),
                        MaterialTextField(lable:tr("Email"),readOnly: false,icon: Icon(Icons.email_outlined,color: Colors.black.withOpacity(0.3),), controller:emilController ,),
                        const SizedBox(height: 12,),
                        MaterialPhoneTextField(readOnly: false,controller: phoneController,),
                        const SizedBox(height: 12,),
                        MaterialTextFieldPassword(lable: tr("Password"),controller:passwordController ,icon: Icon(Icons.vpn_key_outlined,color: Colors.black.withOpacity(0.3)), ),
                        const SizedBox(height: 12,),
                        MaterialTextFieldPassword(lable: tr("Confirm Password"),controller:confirmpasswordController ,icon: Icon(Icons.vpn_key_outlined,color: Colors.black.withOpacity(0.3)), ),
                        const SizedBox(height: 12,),
                        Align(
                          alignment:Alignment.bottomRight,
                          child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, FORGET_PASSWORD_PAGE);
                              },
                              child:  Text("Forget Password?",style: TextStyle(color: btnColor,fontSize: 14,fontWeight: FontWeight.w500),).tr()
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 56,
                          margin: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: isLoading?btnProgressColor:btnColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: isLoading? CircularProgressIndicator(color: Colors.white):Text('Sign Up',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
                            onPressed: () async {
                              if (isLoading) return;
                              setState(() {
                                isLoading = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.pushNamed(context, SIGNUP_SUCCESS);
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 26),
                          child: TextDivider.horizontal(
                              text: const Text('or'),
                              color: dividerColor,
                              thickness: 1
                          ),
                        ),
                        CustomGoogleBtn(),
                        const SizedBox(height: 40,),
                        Align(
                          alignment: Alignment.center,
                          child: InkWell(
                              onTap: () {
                                // logOut(context);
                                Navigator.pushNamed(context, LOGIN_PAGE);
                              },
                              child:RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: 'Dont’t have an account?  ', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black.withOpacity(0.3))),
                                    TextSpan(text: 'Log In', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: btnColor)),
                                  ],
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ),
          ),
        ),
      ),
    );
  }
}
