import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:geocode/geocode.dart';
import '../components/current_weather_container.dart';
import '../components/forecast_container.dart';
import '../models/weather_model.dart';
import '../models/weather_model_daily.dart';
import '../models/weather_model_temp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.locationWeather});

  final locationWeather;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late OneCallWeatherModel weatherModel;
  GeoCode geoCode = GeoCode();
  late String cityName = 'Fetching City...';
  late List<DailyWeather> dailyForecast;

  void getCityAddress(double lat, double lon) async {
    final Address address = await geoCode.reverseGeocoding(latitude: weatherModel.lat, longitude: weatherModel.lon);
    setState(() {
      cityName = address.city!;
    });
  }

  String displayWeatherIcon(int condition) {
    if (condition < 300) {
      return 'thunderstorm';
    } else if (condition < 400) {
      return 'drizzle';
    } else if (condition < 600) {
      return 'heavy-rain';
    } else if (condition < 700) {
      return 'snow';
    } else if (condition < 800) {
      return 'atmosphere';
    } else if (condition == 800) {
      return 'clear';
    } else if (condition <= 804) {
      return 'cloud';
    } else {
      return 'unknown';
    }
  }

  String convertTimestampToDate(int dt) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
    final dayFormat = DateFormat.Md('en_US');
    return dayFormat.format(dateTime);
  }

  String displayDay(int dt) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
    final currentDay = DateTime.now();
    final nextDay = currentDay.add(const Duration(days: 1));

    if (dateTime.day == currentDay.day) {
      return 'Today';
    } else if (dateTime.day == nextDay.day) {
      return 'Tomorrow';
    } else {
      return DateFormat('E').format(dateTime);
    }
  }

  @override
  void initState() {
    super.initState();
    weatherModel = OneCallWeatherModel.fromJson(widget.locationWeather);
    getCityAddress(weatherModel.lat, weatherModel.lon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131830),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: CurrentWeatherContainer(
                  cityName: cityName,
                  weatherDescription: weatherModel.current.weather.description.toUpperCase(),
                  weatherIcon: displayWeatherIcon(weatherModel.current.weather.id),
                  humidity: weatherModel.current.humidity,
                  temperature: weatherModel.current.temp,
                  windSpeed: weatherModel.current.windSpeed,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: weatherModel.daily.length,
                  itemBuilder: (context, index) {
                    final dailyForecast = DailyWeather.fromJson(weatherModel.daily[index]);
                    final dailyTemperature = Temp.fromJson(dailyForecast.temp);

                    return ForecastContainer(
                      day: displayDay(dailyForecast.dt),
                      date: convertTimestampToDate(dailyForecast.dt),
                      weatherIcon: displayWeatherIcon(dailyForecast.weather.id),
                      temp: dailyTemperature.day,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}