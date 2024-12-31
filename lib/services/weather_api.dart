import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kairos_weather_app_v2/services/location.dart';
import 'package:kairos_weather_app_v2/services/network_helper.dart';

class WeatherAPI {

  Future<dynamic> getCurrentLocationWeather() async {
    Location location = Location();
    await location.getCurrentPosition();

    NetworkHelper networkHelper = NetworkHelper(url: '${dotenv.env['URL']}?lat=${location.latitude}&lon=${location.longitude}&appid=${dotenv.env['API_KEY']}&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}