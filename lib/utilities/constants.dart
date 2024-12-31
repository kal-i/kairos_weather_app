import 'package:flutter/material.dart';

const kBackgroundColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment(0.8, 1),
  colors: [
    Color(0xFF909cf1),
    Color(0xFF786ccf),
    Color(0xFF53259d),
    Color(0xFF450788),
  ],
  tileMode: TileMode.mirror,
);

const kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Monoton',
  fontSize: 24.0,
  fontWeight: FontWeight.w500,
);

const kCityTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Inter',
  fontSize: 24.0,
  fontWeight: FontWeight.w500
);

const kWeatherDescription = TextStyle(
  color: Colors.white70,
  fontFamily: 'Inter',
  fontSize: 18.0,
  fontWeight: FontWeight.w100
);

const kWeatherInfoTitleTextStyle = TextStyle(
  color: Colors.white60,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w400
);

const kWeatherInfoValueTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w900
);

const kForecastDayTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w200
);

const kForecastDateTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w200
);

const kForecastTempTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Inter',
    fontSize: 18.0,
    fontWeight: FontWeight.w200
);