import 'weather_data.dart';
import 'weather_model_weather.dart';

class HourlyWeather extends WeatherData {
  const HourlyWeather(
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
      required this.pop});

  final double pop;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) {
    final Weather weather = Weather.fromJson(json['weather'][0]);

    return HourlyWeather(
        dt: json['dt'] ?? 0,
        sunrise: json['sunrise'] ?? 0,
        sunset: json['sunset'] ?? 0,
        temp: json['temp'] ?? 0,
        feelsLike: json['feels_like'] ?? 0,
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
        pop: json['pop'] ?? 0);
  }
}