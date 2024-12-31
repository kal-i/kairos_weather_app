import 'weather_additional_data.dart';

class Temp with AdditionalData {
  Temp(
      {required dynamic day,
      required dynamic min,
      required dynamic max,
      required dynamic night,
      required this.eve,
      required this.morn}) {
    initializeAdditionalData(day: day, min: min, max: max, night: night);
  }

  final dynamic eve;
  final dynamic morn;

  factory Temp.fromJson(Map<String, dynamic> json) {
    return Temp(day: json['day'] as double, min: json['min'] as double, max: json['max'] as double, night: json['night'] as double, eve: json['eve'] as double, morn: json['morn'] as double);
  }
}