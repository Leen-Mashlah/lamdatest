class UserData {
  final int id;
  final String name;
  final String email;
  final String phone;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory UserData.initial() => UserData(
    id: 0,
    name: '',
    email: "",
    phone: "",
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id'] ?? -1000,
      name: map['name'] ?? '',
      email: map['email'] ?? "",
      phone: map['phone'] ?? "",
    );
  }

  UserData copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
  }) {
    return UserData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }
}
