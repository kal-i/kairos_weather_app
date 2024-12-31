import 'weather_model_weather.dart';

class WeatherData {
  const WeatherData(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
      required this.temp,
      required this.feelsLike,
      required this.pressure,
      required this.humidity,
      required this.dewPoint,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.windGust,
      required this.rain,
      required this.snow,
      required this.weather});

  final int dt;
  final int sunrise; 
  final int sunset;
  final dynamic temp;
  final dynamic feelsLike;
  final int pressure;
  final int humidity;
  final dynamic dewPoint;
  final dynamic uvi;
  final int clouds;
  final int visibility;
  final dynamic windSpeed;
  final int windDeg;
  final dynamic windGust;
  final dynamic rain;
  final dynamic snow;
  final Weather weather;
}