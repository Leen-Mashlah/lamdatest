//import 'package:apis/models/user_data.dart';
import 'package:testp1/models/user_data.dart';

class Admin {
  final UserData user;
  final bool isAdmin;
  final String accessToken;

  Admin({
    required this.user,
    required this.isAdmin,
    required this.accessToken,
  });

  factory Admin.initial() => Admin(
    user: UserData.initial(),
    isAdmin: false,
    accessToken: "",
  );

  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'IsAdmin': isAdmin,
      'access_token': accessToken,
    };
  }

  factory Admin.fromMap(Map<String, dynamic> map) {
    return Admin(
      user: UserData.fromMap(map['user'] ?? {}),
      isAdmin: map['IsAdmin'] ?? false,
      accessToken: map['access_token'] ?? '',
    );
  }

  Admin copyWith({
    UserData? user,
    bool? isAdmin,
    String? accessToken,
  }) {
    return Admin(
      user: user ?? this.user,
      isAdmin: isAdmin ?? this.isAdmin,
      accessToken: accessToken ?? this.accessToken,
    );
  }
}
