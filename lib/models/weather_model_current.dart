import 'weather_data.dart';
import 'weather_model_rain.dart';
import 'weather_model_snow.dart';
import 'weather_model_weather.dart';

class CurrentWeather extends WeatherData {
  const CurrentWeather(
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
      required super.weather});

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    final Rain rain = Rain.fromJson(json ['rain']);
    final Snow snow = Snow.fromJson(json['snow']);
    final Weather weather = Weather.fromJson(json['weather'][0]);

    return CurrentWeather(
        dt: json['dt'] ?? 0,
        sunrise: json['sunrise'] ?? 0,
        sunset: json['sunset'] ?? 0,
        temp: json['temp'] ?? 0,
        feelsLike: json['feelsLike'] ?? 0,
        pressure: json['pressure'] ?? 0,
        humidity: json['humidity'] ?? 0,
        dewPoint: json['dewPoint'] ?? 0,
        uvi: json['uvi'] ?? 0,
        clouds: json['clouds'] ?? 0,
        visibility: json['visibility'] ?? 0,
        windSpeed: json['wind_speed'] ?? 0,
        windDeg: json['wind_deg'] ?? 0,
        windGust: json['wind_gust'] ?? 0,
        rain: rain,
        snow: snow,
        weather: weather);
  }
}