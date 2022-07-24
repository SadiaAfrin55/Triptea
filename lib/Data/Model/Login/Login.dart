// ignore_for_file: file_names
import 'package:json_annotation/json_annotation.dart';

import '../User/User.dart';
part 'Login.g.dart';

@JsonSerializable()
class Login{


  String? status;
  String? token;
  User? user;


  Login(this.status, this.token, this.user);

  factory Login.fromJson(Map<String,dynamic>json)=>
      _$LoginFromJson(json);
  Map<String,dynamic>toJson()=>_$LoginToJson(this);
}