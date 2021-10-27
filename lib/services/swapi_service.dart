import 'package:swapi_app/models/person.dart';
import 'package:swapi_app/models/planet.dart';
import 'package:swapi_app/models/starship.dart';
import 'package:swapi_app/types/swapi_response_dto.dart';
import 'package:swapi_app/types/swapi_type.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class SwapiService {
  static Future<List<dynamic>> fetchSwapiData(SwapiType type) async {
    await Future.delayed(const Duration(seconds: 2));
    final url = Uri.parse('https://swapi.dev/api/${type.value}/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final json = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (type == SwapiType.people) {
        return SwapiResponseDto.fromJson(json)
            .results
            .map((e) => Person.fromJson(e))
            .toList();
      }
      if (type == SwapiType.planets) {
        return SwapiResponseDto.fromJson(json)
            .results
            .map((e) => Planet.fromJson(e))
            .toList();
      }
      if (type == SwapiType.starships) {
        return SwapiResponseDto.fromJson(json)
            .results
            .map((e) => Starship.fromJson(e))
            .toList();
      }
    }
    return [];
  }
}
