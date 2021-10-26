class SwapiResponseDto {
  SwapiResponseDto({
    required this.count,
    required this.results,
  });

  late int count;
  late List<Map<String, dynamic>> results;

  SwapiResponseDto.fromJson(Map<String, dynamic> json) {
    count = json['count'] ?? 0;
    final r = (json['results'] as List)
        .map((e) => Map<String, dynamic>.from(e))
        .toList();
    results = r;
  }
}
