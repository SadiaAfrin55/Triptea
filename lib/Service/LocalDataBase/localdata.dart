import 'package:hive/hive.dart';

class LocalDataGet{
   getData() async{
    var users= await Hive.openBox('users');
    // print("xxx"+users.get('name'));
    if(users.get('token')==null){
      print("hive ");
    }else{
      print("hive "+users.get('token'));
    }

    return users;
  }
}