
import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

import '../../Constants/Strings/app_strings.dart';

class LoginNetwork{
  var logger = Logger();

 Future logIn(Map<String, String> data)async {
   // print("call");
   // print(data);
    try{
      var response = await http.post(
        Uri.parse(BASE_URL+"users/login"),
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json"
        },
        body: json.encode(data),
      );
      logger.d(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }


  Future SignUp(Map<String, String> data)async {
    // print("call");
    // print(data);
    try{
      var response = await http.post(
        Uri.parse(BASE_URL+"users/signup"),
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json"
        },
        body: json.encode(data),
      );
      logger.d(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }

  Future otpVerify(String? token,Map<String, dynamic> data) async{
    print(token);
    logger.d(json.encode(data));
    try{
      var response = await http.post(
        Uri.parse(BASE_URL + "question/verify_otp"),
        headers: {
          "Authorization": "Bearer " + token!,
          "Content-type": "application/json",
          "Accept": "application/json",
        },
        body: json.encode(data),
      );

      logger.d(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }


  Future otpResend(String? token,Map<String, dynamic> data) async{
    print(token);
    logger.d(json.encode(data));
    try{
      var response = await http.post(
        Uri.parse(BASE_URL + "question/resend_otp"),
        headers: {
          "Authorization": "Bearer " + token!,
          "Content-type": "application/json",
          "Accept": "application/json",
        },
        body: json.encode(data),
      );

      logger.d(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }

}