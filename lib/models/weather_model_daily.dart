import 'weather_data.dart';
import 'weather_model_weather.dart';


class DailyWeather extends WeatherData {
  const DailyWeather(
      {required super.dt,
      required super.sunrise,
      required super.sunset,
      required super.temp,
      required super.feelsLike,
      required super.pressure,
      required super.humidity,
      required super.dewPoint,
      required super.uvi,
      required super.clouds,
      required super.visibility,
      required super.windSpeed,
      required super.windDeg,
      required super.windGust,
      required super.rain,
      required super.snow,
      required super.weather,
      required this.moonrise,
      required this.moonset,
      required this.moonPhase,
      required this.summary,
      required this.pop});

  final int moonrise;
  final int moonset;
  final dynamic moonPhase;
  final String summary;
  final dynamic pop;

  factory DailyWeather.fromJson(Map<String, dynamic> json) {
    final Weather weather = Weather.fromJson(json['weather'][0]);
    
    return DailyWeather(
        dt: json['dt'] ?? 0,
        sunrise: json['sunrise'] ?? 0,
        sunset: json['sunset'] ?? 0,
        temp: json['temp'],
        feelsLike: json['feels_like'],
        pressure: json['pressure'] ?? 0,
        humidity: json['humidity'] ?? 0,
        dewPoint: json['dew_point'] ?? 0,
        uvi: json['uvi'] ?? 0,
        clouds: json['clouds'] ?? 0,
        visibility: json['visibility'] ?? 0,
        windSpeed: json['wind_speed'] ?? 0,
        windDeg: json['wind_deg'] ?? 0,
        windGust: json['wind_gust'] ?? 0,
        rain: json['rain'] ?? 0,
        snow: json['snow'] ?? 0,
        weather: weather,
        moonrise: json['moonrise'] ?? 0,
        moonset: json['moonset'] ?? 0,
        moonPhase: json['moon_phase'] ?? 0,
        summary: json['summary'] ?? 0,
        pop: json['pop'] ?? 0);
  }
}