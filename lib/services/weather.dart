

import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'networking.dart';
// import 'location_screen.dart';



class WeatherModel {
  Future<dynamic> getWeatherCity(String k) async{
    Networking networking = Networking(
        'https://api.openweathermap.org/data/2.5/weather?q=$k&appid=5e881ca31fbbff8753b54d8feef4b4b1&units=metric');
    var weatherData12 = await networking.getData();
    return weatherData12;
  }
  Future<dynamic> getWeatherTemp() async{
    Location location = Location();
    await location.getPosition();

    var p1 = location.latitude;
    var p2 = location.longitude;
    Networking networking = Networking(
        'https://api.openweathermap.org/data/2.5/weather?lat=$p1&lon=$p2&appid=5e881ca31fbbff8753b54d8feef4b4b1&units=metric');
    var weatherData1 = await networking.getData();
     return weatherData1;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
  String getImages(int temp) {
    if (temp > 32) {
      return 'images/thirty.jpg';
    } else if (temp > 25) {
      return 'images/location_background.jpg';
    } else if (temp < 25 ){
      return 'images/ten.jpg';
    } else if (temp > 10) {
      return 'images/ten.jpg';
    }
  }
}
