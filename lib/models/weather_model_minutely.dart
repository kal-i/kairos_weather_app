class MinutelyWeather {
  const MinutelyWeather({required this.dt, required this.precipitation});

  final int dt;
  final int precipitation;

  factory MinutelyWeather.fromJson(Map<String, dynamic> json) {
    return MinutelyWeather(
        dt: json['dt'], precipitation: json['precipitation']);
  }
}