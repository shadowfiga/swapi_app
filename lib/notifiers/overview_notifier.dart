import 'package:flutter/material.dart';
import 'package:swapi_app/services/swapi_service.dart';
import 'package:swapi_app/types/swapi_type.dart';

class OverviewNotifier with ChangeNotifier {
  SwapiType type = SwapiType.people;
  List<dynamic> data = [];
  bool loading = false;

  Future<void> setType(SwapiType t) async {
    type = t;
    loading = true;
    notifyListeners();
    await fetch(shouldNotify: false);
    loading = false;
    notifyListeners();
  }

  Future<void> fetch({bool shouldNotify = true}) async {
    data = await SwapiService.fetchSwapiData(type);
    if (shouldNotify) {
      notifyListeners();
    }
  }
}
