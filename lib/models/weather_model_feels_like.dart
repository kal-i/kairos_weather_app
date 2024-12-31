import 'weather_additional_data.dart';

class FeelsLike with AdditionalData {
  FeelsLike(
      {required dynamic day,
      required dynamic min,
      required dynamic max,
      required dynamic night}) {
    initializeAdditionalData(day: day, min: min, max: max, night: night);
  }

  factory FeelsLike.fromJson(Map<String, dynamic> json) {
    return FeelsLike(
        day: json['day'] ?? 0,
        min: json['min'] ?? 0,
        max: json['max'] ?? 0,
        night: json['night'] ?? 0);
  }
}