class Person {
  Person(
      {this.birthYear,
      this.eyeColor,
      this.films,
      this.gender,
      this.hairColor,
      this.homeworld,
      this.height,
      this.mass,
      this.skinColor,
      this.name,
      this.species,
      this.starships,
      this.vehicles,
      this.created,
      this.edited});
  String? birthYear;
  String? eyeColor;
  List<String>? films;
  String? gender;
  String? hairColor;
  double? height;
  String? homeworld;
  double? mass;
  String? name;
  String? skinColor;
  List<String>? species;
  List<String>? starships;
  List<String>? vehicles;
  DateTime? created;
  DateTime? edited;

  static Person fromJson(Map<String, dynamic> json) {
    return Person(
      birthYear: json['birth_year'] ?? 'unknown',
      eyeColor: json['eye_color'] ?? 'unknown',
      films: json['films'] ?? [],
      gender: json['gender'] ?? 'other',
      hairColor: json['hair_color'],
      height: double.tryParse(json['height']) ?? 0,
      homeworld: json['homeworld'] ?? 'unknown',
      mass: double.tryParse(json['mass']) ?? 0,
      name: json['name'] ?? 'unkown',
      skinColor: json['skin_color'] ?? 'unkown',
      created: DateTime.tryParse(json['created']) ?? DateTime.now(),
      edited: DateTime.tryParse(json['edited']) ?? DateTime.now(),
      species: json['films'] ?? [],
      starships: json['starships'] ?? [],
      vehicles: json['vehicles'] ?? [],
    );
  }
}
