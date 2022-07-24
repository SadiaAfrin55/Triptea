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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  TextEditingController emilController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
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
                content: const Text("User id and password are mismatched").tr(),
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
                  height: MediaQuery.of(context).size.height*0.9,
                  margin: EdgeInsets.only(left: 20,right:20,top: 40),
                  child: Form(
                    key: _globalkey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          const Text('Hi! Welcome Back',style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:boldTextColor
                          ),),
                          const SizedBox(height: 8),
                          const Text('Log in to your account',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color:lightTextColor
                          ),),
                          const SizedBox(height: 71),
                          MaterialTextField(lable:tr("Email"),readOnly: false,icon: Icon(Icons.email_outlined,color: Colors.black.withOpacity(0.3),), controller:emilController ,),
                          const SizedBox(height: 12,),
                          MaterialTextFieldPassword(lable: tr("Password"),controller:passwordController ,icon: Icon(Icons.vpn_key_outlined,color: Colors.black.withOpacity(0.3)), ),
                          const SizedBox(height: 12,),
                          Align(
                            alignment:Alignment.bottomRight,
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, FORGET_PASSWORD_PAGE);
                                },
                                child:  Text("Forget Password?",style: const TextStyle(color: btnColor,fontSize: 14,fontWeight: FontWeight.w500),).tr()
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
                              child: isLoading? CircularProgressIndicator(color: Colors.white):Text('Log In',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
                              onPressed: () async {
                                if (isLoading) return;
                                setState(() {
                                  isLoading = true;
                                });
                                await Future.delayed(Duration(seconds: 2));
                                setState(() {
                                  isLoading = false;
                                });
                                Navigator.pushNamed(context, LOGIN_SUCCESS);
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 50),
                            child: TextDivider.horizontal(
                                text: const Text('or'),
                                color: dividerColor,
                                thickness: 1
                            ),
                          ),
                          const CustomGoogleBtn(),
                          const SizedBox(height: 40,),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                                onTap: () {
                                  // logOut(context);
                                  Navigator.pushNamed(context, SIGNUP_PAGE);
                                },
                                child:RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: 'Dont’t have an account?  ', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black.withOpacity(0.3))),
                                      const TextSpan(text: 'Sign up', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: btnColor)),
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
