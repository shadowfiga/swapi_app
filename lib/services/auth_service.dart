import 'package:swapi_app/mocks/user_mocks.dart';
import 'package:swapi_app/models/user.dart';

class AuthService {
  static Future<User?> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    // Simulate latency
    await Future.delayed(const Duration(seconds: 2));
    final user =
        userMocks.firstWhere((u) => u.email == email && u.password == password);
    return user;
  }
}
