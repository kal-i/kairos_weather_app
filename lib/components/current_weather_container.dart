import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CurrentWeatherContainer extends StatelessWidget {
  const CurrentWeatherContainer(
      {super.key,
        required this.cityName,
        required this.weatherDescription,
        required this.weatherIcon,
        required this.humidity,
        required this.temperature,
        required this.windSpeed});

  final String cityName;
  final String weatherDescription;
  final String weatherIcon;
  final int humidity;
  final double temperature;
  final dynamic windSpeed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cityName,
          style: kCityTextStyle,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          weatherDescription,
          style: kWeatherDescription,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Image.asset(
              'images/$weatherIcon.png',
              height: 350.0,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.water_drop,
                  color: Colors.white12,
                  size: 30.0,
                ),
                const Text(
                  'Humidity',
                  style: kWeatherInfoTitleTextStyle,
                ),
                Text(
                  '$humidity%',
                  style: kWeatherInfoValueTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.thermostat,
                  color: Colors.white12,
                  size: 30.0,
                ),
                const Text(
                  'Temperature',
                  style: kWeatherInfoTitleTextStyle,
                ),
                Text(
                  '$temperature°',
                  style: kWeatherInfoValueTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.air,
                  color: Colors.white12,
                  size: 30.0,
                ),
                const Text(
                  'Wind',
                  style: kWeatherInfoTitleTextStyle,
                ),
                Text(
                  '$windSpeed mph',
                  style: kWeatherInfoValueTextStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}