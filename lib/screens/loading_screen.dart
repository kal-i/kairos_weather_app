import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kairos_weather_app_v2/screens/home_screen.dart';
import 'package:kairos_weather_app_v2/services/weather_api.dart';
import 'package:kairos_weather_app_v2/utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getCurrentLocation() async {
    WeatherAPI weatherAPI = WeatherAPI();
    var weatherData = await weatherAPI.getCurrentLocationWeather();

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(locationWeather: weatherData)));
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131830),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 120.0,
            child: Image.asset('images/cloud.png'),
          ),
          const Text(
            'kairos weather',
            style: kTitleTextStyle,
          ),
          const SpinKitDoubleBounce(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}