import 'package:flutter/material.dart';
import 'package:kairos_weather_app_v2/utilities/constants.dart';

class ForecastContainer extends StatelessWidget {
  const ForecastContainer(
      {super.key,
        required this.day,
        required this.date,
        required this.weatherIcon,
        required this.temp});

  final String day;
  final String date;
  final String weatherIcon;
  final double temp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      padding: const EdgeInsets.all(10.0),
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFF474C65),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            day,
            style: kForecastDayTextStyle,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            date,
            style: kForecastDateTextStyle,
          ),
          Expanded(
            child: Image.asset(
              'images/$weatherIcon.png',
            ),
          ),
          Text(
            '$temp°',
            style: kForecastTempTextStyle,
          ),
        ],
      ),
    );
  }
}