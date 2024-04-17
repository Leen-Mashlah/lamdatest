import 'dart:convert';

// import 'package:apis/core/api/auth_api.dart';
// import 'package:apis/models/admin.dart';
// import 'package:apis/models/admin111.dart';
// import 'package:apis/models/user_data.dart';

import '../../models/admin.dart';
import '../../models/admin111.dart';
import '../api/auth_api.dart';

class AuthRepo{

  AuthApi authApi = AuthApi();
  Future<Admin111> loginRepo(String email, String password)async{
    var response = await authApi.login(email, password);
    if(response.statusCode != 200) {
      throw Exception("error : ${response.statusCode}");
    }
    var body = jsonDecode(response.body);
    print(body);
    Admin111  admin = Admin111.fromMap(body);
    return admin;
  }





  Future<Admin>signUp(String name, String email, String password, String phone)async{
    var response = await authApi.signup(name, email, password, phone);
    if (response.statusCode!=200){
      throw Exception('error: ${response.statusCode}');
    }
    var responseBody = json.decode(response.body);
    Admin admin = Admin.fromMap(responseBody);
    return admin;
  }







}