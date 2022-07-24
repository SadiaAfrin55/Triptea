part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginUser extends LoginState{
  late final Login? login;
  LoginUser({this.login});
}

class LoginUserFail extends LoginState{
  late final String? login;
  LoginUserFail({this.login});
}
//
// class OtpVerify extends LoginState {
//   final dynamic done;
//   .OtpVerify({this.done});
// }
