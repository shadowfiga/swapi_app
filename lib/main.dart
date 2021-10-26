import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swapi_app/pages/auth_page.dart';
import 'package:swapi_app/pages/overview_page.dart';
import 'package:swapi_app/pages/splash_page.dart';
import 'package:swapi_app/providers/auth_provider.dart';

void main() {
  runApp(const SwapiApp());
}

class SwapiApp extends StatelessWidget {
  const SwapiApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        )
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) {
          return MaterialApp(
            home: FutureBuilder(
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SplashPage(
                    key: key,
                  );
                } else if (auth.user == null) {
                  return AuthPage(
                    key: key,
                  );
                } else {
                  return OverviewPage(
                    key: key,
                  );
                }
              },
              future: auth.tryLogin(),
            ),
          );
        },
      ),
    );
  }
}
