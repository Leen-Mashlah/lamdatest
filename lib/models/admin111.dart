//import 'package:apis/models/user_data111.dart';
import 'package:testp1/models/userData111.dart';

class Admin111 {
  final UserData111 data;
  final bool isAdmin;
  final String token;

  Admin111({
    required this.data,
    required this.isAdmin,
    required this.token,
  });

  factory Admin111.initial() => Admin111(
    data: UserData111.initial(),
    isAdmin: false,
    token: '',
  );

  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'isAdmin': isAdmin,
      'Token': token,
    };
  }

  factory Admin111.fromMap(Map<String, dynamic> map) {
    return Admin111(
      data: UserData111.fromMap(map['data']),
      isAdmin: map['IsAdmin'] ?? false,
      token: map['Token'] as String,
    );
  }
}
