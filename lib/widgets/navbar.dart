import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:swapi_app/providers/auth_provider.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 10,
            color: Colors.black26,
          )
        ],
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "SWAPI",
            style: theme.textTheme.headline4!.copyWith(
              color: theme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Consumer<Auth>(builder: (ctx, auth, child) {
                return TextButton(
                  onPressed: () {},
                  child: Text(
                    auth.user!.email!,
                    style: theme.textTheme.bodyText2!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}