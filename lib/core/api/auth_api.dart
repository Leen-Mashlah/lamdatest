//import 'package:apis/constant.dart';
import 'package:http/http.dart' as http;

import '../../shared/component/constants.dart';

class AuthApi {
  Future<http.Response> login(String email, String password) async {
    Uri url = Uri.parse("$baseUrl/Admin/login");
    var request = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'email': email,
        'password': password,
      },
    );
    return request;
  }

  Future<http.Response> signup(
      String name, String email, String password, String phone) async {
    Uri url = Uri.parse('$baseUrl/Admin/signup');
    var request =await http.post(
      url,
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'name':name,
        'email':email,
        'password':password,
        'c_password':password,
        'phone':phone,
      },

    );
    return request;
  }
}
