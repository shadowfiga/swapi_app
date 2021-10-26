import 'package:localstorage/localstorage.dart';
import 'package:swapi_app/mocks/user_mocks.dart';
import 'package:swapi_app/models/user.dart';

class AuthService {
  static LocalStorage localStorage = LocalStorage('swapi-app.json');

  static Future<User?> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    await localStorage.ready;
    final user =
        userMocks.firstWhere((u) => u.email == email && u.password == password);
    localStorage.setItem('user', User.toJson(user));
    return user;
  }

  static Future<User?> tryLogin() async {
    await localStorage.ready;
    final u = localStorage.getItem('user');
    return User.fromJson(u);
  }
}
