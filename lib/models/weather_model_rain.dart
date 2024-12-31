class Rain {
  const Rain({required this.rainVolume1h});

  final double rainVolume1h;

  factory Rain.fromJson(Map<String, dynamic>? json) {
    return Rain(rainVolume1h: json?['1h'] ?? 0);
  }
}