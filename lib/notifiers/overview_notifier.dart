import 'package:flutter/material.dart';
import 'package:swapi_app/services/swapi_service.dart';
import 'package:swapi_app/types/swapi_type.dart';

class OverviewNotifier with ChangeNotifier {
  SwapiType? type;
  List<dynamic> data = [];
  bool loading = false;

  Future<void> setType(SwapiType t) async {
    type = t;
    await fetch();
  }

  Future<void> fetch() async {
    loading = true;
    notifyListeners();
    data = await SwapiService.fetchSwapiData(type!);
    loading = false;
    notifyListeners();
  }
}
