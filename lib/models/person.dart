class Person {
  Person({
    this.gender,
    this.birthYear,
    this.name,
  });
  String? gender;
  String? birthYear;
  String? name;

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? 'unkown';
    gender = json['gender'] ?? 'other';
    birthYear = json['birth_year'] ?? 'unknown';
  }
}
