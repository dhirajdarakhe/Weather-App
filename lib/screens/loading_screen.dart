import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima/services/weather.dart';
const a = 'c004ae2c7e830d983033ec568053c4e9';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // double p1;
  // double p2;
  @override
  void initState() {
    super.initState();
    getLocation();

  }

  void getLocation() async {
    // Location location = Location();
    // await location.getPosition();
    //
    // p1 = location.latitude;
    // p2 = location.longitude;
    // Networking networking =  Networking('https://api.openweathermap.org/data/2.5/weather?lat=$p1&lon=$p2&appid=5e881ca31fbbff8753b54d8feef4b4b1&units=metric');
    // var weatherData1 = await networking.getData();
    WeatherModel weatherModel = WeatherModel();
    var weatherData1 = await weatherModel.getWeatherTemp();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(
          weatherData : weatherData1,
      );}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(

        child: SpinKitWave(
          color: Colors.red,
          size: 89.0,
        ),
      )
    );
  }
}
