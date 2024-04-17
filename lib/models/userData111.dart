class UserData111 {
  final int id;
  final String name;
  final String email;
  final String phone;

  UserData111({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory UserData111.initial() => UserData111(
    id: 0,
    name: "",
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

  factory UserData111.fromMap(Map<String, dynamic> map) {
    return UserData111(
      id: map['id'] ?? -1000,
      name: map['name'] ?? "",
      email: map['email'] as String,
      phone: map['phone'] as String,
    );
  }

  UserData111 copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
  }) {
    return UserData111(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }
}
