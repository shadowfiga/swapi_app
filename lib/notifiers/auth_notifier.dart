import 'package:flutter/material.dart';
import 'package:swapi_app/models/user.dart';
import 'package:swapi_app/services/auth_service.dart';
import 'package:swapi_app/types/login_status.dart';

class AuthNotifier with ChangeNotifier {
  User? user;
  LoginStatus loginStatus = LoginStatus.loggedOut;
  String? loginError;

  Future<void> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
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
    final u = await AuthService.tryLogin();
    if (u != null && loginStatus == LoginStatus.loggedOut) {
      user = u;
      loginStatus = LoginStatus.loggedIn;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await AuthService.logout();
    user = null;
    loginStatus = LoginStatus.loggedOut;
    notifyListeners();
  }
}
