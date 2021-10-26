import 'package:flutter/material.dart';
import 'package:swapi_app/common/swapi_type.dart';

class OverviewNotifier with ChangeNotifier {
  SwapiType type = SwapiType.people;

  void setSwapiType(SwapiType t) {
    type = t;
    notifyListeners();
  }
}
