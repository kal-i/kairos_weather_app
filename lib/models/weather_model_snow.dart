class Snow {
  const Snow({required this.snowVolume1h});

  final double snowVolume1h;

  factory Snow.fromJson(Map<String, dynamic>? json) {
    return Snow(snowVolume1h: json?['1h'] ?? 0);
  }
}