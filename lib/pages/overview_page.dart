import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:swapi_app/common/swapi_type.dart';
import 'package:swapi_app/notifiers/overview_notifier.dart';
import 'package:swapi_app/widgets/navbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final overviewNotifier = Provider.of<OverviewNotifier>(context);
    final theme = Theme.of(context);
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
          SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<OverviewNotifier>(
                  builder: (ctx, overview, _) {
                    return Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            if (overview.type != SwapiType.people) {
                              overview.setSwapiType(SwapiType.people);
                            }
                          },
                          child: Text(
                            "people",
                            style: TextStyle(
                              color: overview.type == SwapiType.people
                                  ? Colors.green
                                  : theme.primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            if (overview.type != SwapiType.planets) {
                              overview.setSwapiType(SwapiType.planets);
                            }
                          },
                          child: Text(
                            "planets",
                            style: TextStyle(
                              color: overview.type == SwapiType.planets
                                  ? Colors.green
                                  : theme.primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            if (overview.type != SwapiType.spaceships) {
                              overview.setSwapiType(SwapiType.spaceships);
                            }
                          },
                          child: Text(
                            "spaceships",
                            style: TextStyle(
                              color: overview.type == SwapiType.spaceships
                                  ? Colors.green
                                  : theme.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            width: 720,
          ),
        ],
      ),
    );
  }
}
