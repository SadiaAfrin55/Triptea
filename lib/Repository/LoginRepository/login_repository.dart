
import 'package:logger/logger.dart';

import '../../Data/Model/Login/Login.dart';
import '../../Network/LoginNetworkService/login_network.dart';

class LoginRepository{
  var logger = Logger();
  LoginNetwork loginNetwork=LoginNetwork();
  Future<Login> logIn(String email, String password) async {
    Map<String, String> data = {
      "email":email,
      "password": password,
    };
    final userRaw=await loginNetwork.logIn(data);
    logger.d(Login.fromJson(userRaw));

    return Login.fromJson(userRaw);
  }


  Future<Login> SignUp(String email, String name, String pass, String confirmPass) async {
    Map<String, String> data = {
      "name":name,
      "email":email,
      "password":pass,
      "passwordConfirm":confirmPass
    };
    final userRaw=await loginNetwork.SignUp(data);
    logger.d(Login.fromJson(userRaw));

    return Login.fromJson(userRaw);
  }

  // Future otpVerify(String? token, String otp, String? mobile)async {
  //   Map<String, dynamic> data = {
  //     "mobileNumber":mobile,
  //     "otp": otp,
  //   };
  //   logger.d(data);
  //   final attendance=await LoginNetwork.otpVerify(token,data);
  //
  //   return attendance;
  // }
  //
  //
  // Future otpResend(String? token, String? mobile)async {
  //   Map<String, dynamic> data = {
  //     "mobileNumber":mobile,
  //   };
  //
  //   logger.d(data);
  //   final attendance=await LoginNetwork.otpResend(token,data);
  //
  //   return attendance;
  // }

}