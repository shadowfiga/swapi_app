class Planet {
  Planet({
    this.terrain,
    this.name,
    this.climate,
  });
  String? terrain;
  String? name;
  String? climate;

  Planet.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? 'unkown';
    terrain = json['terrain'] ?? 'unknown';
    climate = json['climate'] ?? 'unknown';
  }
}
