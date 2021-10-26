import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:swapi_app/constants/font.dart';
import 'package:swapi_app/constants/themes.dart';
import 'package:swapi_app/models/user.dart';
import 'package:swapi_app/providers/auth_provider.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final authFormKey = GlobalKey<FormState>();
  final user = User.createEmpty();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<Auth>(context, listen: false);
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Form(
          key: authFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Login",
                style: theme.textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontFamily: Font.nunitoSans.value,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    isDense: true,
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => user.email = value,
                ),
                width: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    isDense: true,
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => user.password = value,
                ),
                width: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  authProvider.loginWithEmailAndPassword(
                    user.email!,
                    user.password!,
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: theme.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
