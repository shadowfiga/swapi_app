import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swapi_app/widgets/navbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navbar(
            key: key,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text("temp")],
            ),
            width: 720,
          ),
        ],
      ),
    );
  }
}
