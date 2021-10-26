import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:swapi_app/notifiers/overview_notifier.dart';
import 'package:swapi_app/services/swapi_service.dart';
import 'package:swapi_app/types/swapi_type.dart';
import 'package:swapi_app/widgets/navbar.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            if (overview.type != SwapiType.starships) {
                              overview.setSwapiType(SwapiType.starships);
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
                    FutureBuilder(
                      builder: (ctx, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const SpinKitSpinningLines(
                            color: Colors.yellow,
                            size: 32,
                          );
                        } else if (snapshot.hasError) {
                          return Text(
                            snapshot.error.toString(),
                            style: theme.textTheme.bodyText2!.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        } else {
                          print(snapshot.data);
                          return const Text("Fallthorugh");
                        }
                      },
                      future: SwapiService.fetchSwapiData(overview.type),
                    ),
                  ],
                );
              },
            ),
            width: 720,
          ),
        ],
      ),
    );
  }
}
