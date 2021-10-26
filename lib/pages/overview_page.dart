import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swapi_app/widgets/navbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(
            key: key,
          ),
        ],
      ),
    );
  }
}
