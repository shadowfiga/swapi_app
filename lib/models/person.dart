class Person {
  Person({
    this.gender,
    this.homeworld,
    this.name,
  });
  String? gender;
  String? homeworld;
  String? name;

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? 'unkown';
    gender = json['gender'] ?? 'other';
    homeworld = json['homeworld'] ?? 'unknown';
  }
}
