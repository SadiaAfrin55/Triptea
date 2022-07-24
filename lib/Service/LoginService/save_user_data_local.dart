import 'package:hive/hive.dart';

class LoginDataSave{

  Future storeTokenUserdata(Box? users,String? token,String? id,String? name,String? email,String? role) async{
    print(id);
    users?.put("token", token);
    users?.put("name", name);
    users?.put("email", email);
    users?.put("userId", id);
    users?.put("role", role);

    print("done");
  }
//login

}