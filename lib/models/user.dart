class User {
  User({
    required this.email,
    required this.password,
  });
  User.createEmpty({this.email, this.password});

  String? email;
  String? password;

  static Map<String, dynamic> toJson(User user) {
    return {
      'email': user.email,
      'password': user.password,
    };
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
    );
  }
}
