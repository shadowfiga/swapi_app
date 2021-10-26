class User {
  User({
    required this.email,
    required this.password,
  });
  User.createEmpty({this.email, this.password});

  String? email;
  String? password;
}
