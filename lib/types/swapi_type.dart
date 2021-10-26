enum SwapiType {
  people,
  planets,
  starships,
}

extension SwapiTypeExtension on SwapiType {
  String? get value {
    switch (this) {
      case SwapiType.people:
        return 'people';
      case SwapiType.planets:
        return 'planets';
      case SwapiType.starships:
        return 'starships';
    }
  }
}
