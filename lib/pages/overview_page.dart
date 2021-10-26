import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:swapi_app/notifiers/overview_notifier.dart';
import 'package:swapi_app/types/swapi_type.dart';
import 'package:swapi_app/widgets/navbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final overviewProvider =
        Provider.of<OverviewNotifier>(context, listen: false);
    overviewProvider.fetch(shouldNotify: true);
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
            child: Consumer<OverviewNotifier>(
              builder: (ctx, overview, _) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            if (overview.type != SwapiType.people) {
                              overview.setType(SwapiType.people);
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
                              overview.setType(SwapiType.planets);
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
                            if (overview.type != SwapiType.starships) {
                              overview.setType(SwapiType.starships);
                            }
                          },
                          child: Text(
                            "spaceships",
                            style: TextStyle(
                              color: overview.type == SwapiType.starships
                                  ? Colors.green
                                  : theme.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (overview.loading)
                      const SpinKitSpinningLines(
                        color: Colors.yellow,
                        size: 64,
                      ),
                    if (!overview.loading)
                      ...overview.data.map((e) {
                        if (overview.type == SwapiType.people) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(e.name),
                              Text(e.gender),
                              Text(e.birthYear)
                            ],
                          );
                        } else if (overview.type == SwapiType.planets) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(e.name),
                              Text(e.terrain),
                              Text(e.climate)
                            ],
                          );
                        } else {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(e.name),
                              Text(e.model),
                              Text(e.manufacturer)
                            ],
                          );
                        }
                      })
                  ],
                );
              },
            ),
            width: 1080,
          ),
        ],
      ),
    );
  }
}
