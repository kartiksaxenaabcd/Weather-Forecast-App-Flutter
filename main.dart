
import 'package:flutter/material.dart';
import 'package:mausamapp/weather_forecast.dart';


//void main() => runApp(ScaffoldExample());

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
      brightness: Brightness.dark,
      accentColor: Colors.white54,
      primaryColor: Colors.grey[800],
      scaffoldBackgroundColor: Colors.blue.shade200,
      backgroundColor: Colors.white54,
      textTheme: _appTextTheme(base.textTheme));
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
      headline: base.headline.copyWith(
        fontWeight: FontWeight.w500,
      ),
      title:
      base.title.copyWith(fontSize: 15.0, fontStyle: FontStyle.italic),
      caption: base.caption
          .copyWith(fontWeight: FontWeight.w400, fontSize: 12.0),
      button: base.button.copyWith(
        //fontSize: 23.9,

      ),
      body1: base.body1.copyWith(
        fontSize: 13.9,
        fontFamily: "Lobster",
        color: Colors.black,
      ))
      .apply(
    fontFamily: "Lobster",
    displayColor: Colors.black,
    //bodyColor: Colors.red
  );
}

void main() => runApp(new MaterialApp(
  /*
   Uncomment theme ( bellow ) to see the effects of _appTheme across the entire app
   */
  theme: _appTheme,
//     theme: ThemeData(
//        brightness: Brightness.dark,
//        primaryColor: Colors.grey[800],
//
//       textTheme: TextTheme(
//          headline: TextStyle(
//              fontSize: 34,
//            fontWeight: FontWeight.bold,
//          ),
//         body1: TextStyle(
//            fontSize: 16.9,
//           color: Colors.white
//         )
//
//       )

  //),
  home:WeatherForecast(),


));