import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(3, 33, 74, 1),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Preparing application",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SpinKitSpinningLines(
                color: Colors.yellow,
                size: 72,
              )
            ],
          ),
        ),
      ),
    );
  }
}
