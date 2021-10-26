import 'package:flutter/material.dart';
import 'package:swapi_app/common/login_status.dart';
import 'package:swapi_app/models/user.dart';
import 'package:swapi_app/services/auth_service.dart';

class Auth with ChangeNotifier {
  User? user;
  LoginStatus loginStatus = LoginStatus.loggedOut;
  String? loginError;

  Future<void> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      user = await AuthService.loginWithEmailAndPassword(email, password);
      loginStatus = LoginStatus.loggedIn;
    } catch (e) {
      loginError = 'Invalid Credentials!';
    }
    notifyListeners();
  }

  Future<void> tryLogin() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
