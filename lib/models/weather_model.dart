import 'weather_model_current.dart';

class OneCallWeatherModel {
   OneCallWeatherModel(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.timezoneOffset,
      required this.current,
      required this.minutely,
      required this.hourly,
      required this.daily,
      required this.alert});

  final double lat;
  final double lon;
  final String timezone;
  final int timezoneOffset;
  final CurrentWeather current;
  final List<dynamic> minutely;
  final List<dynamic> hourly;
  final List<dynamic> daily;
  final List<dynamic> alert;

  factory OneCallWeatherModel.fromJson(Map<String, dynamic> json) {
    final CurrentWeather currentWeather = CurrentWeather.fromJson(json['current']);
    final alerts = json['alerts'] as List<dynamic>?;
    final minuteWeathers = json['minutely'] as List<dynamic>?;
    final hourlyWeathers = json['hourly'] as List<dynamic>?;
    final dailyWeathers = json['daily'] as List<dynamic>?;

    return OneCallWeatherModel(
        lat: json['lat'],
        lon: json['lon'],
        timezone: json['timezone'],
        timezoneOffset: json['timezone_offset'],
        current: currentWeather,
        minutely: minuteWeathers ?? [],
        hourly: hourlyWeathers ?? [],
        daily: dailyWeathers ?? [],
        alert: alerts ?? []);
  }
}