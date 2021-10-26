class Starship {
  Starship({
    this.manufacturer,
    this.model,
    this.name,
  });
  String? manufacturer;
  String? model;
  String? name;

  Starship.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? 'unkown';
    manufacturer = json['manufacturer'] ?? 'other';
    model = json['model'] ?? 'unknown';
  }
}
