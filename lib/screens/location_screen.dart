import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/services/weather.dart';
import 'city_screen.dart';
const kmage = DecorationImage(
  image: AssetImage('images/location_background.jpg'),
  fit: BoxFit.cover,
);


class LocationScreen extends StatefulWidget {
  LocationScreen({this.weatherData});
  final weatherData;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // const kmage1 =  AssetImage('images/location_background.jpg'),

  var longitudinal;
  var image;
  double temp = 0.0;
  var cityName;
  int temp1;
  int id;
  var icon1;
  var description;
  WeatherModel weatherModel = WeatherModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var decodeq = widget.weatherData;
    getData(decodeq);
  }

  void getData(dynamic decode) {
setState(() {
  longitudinal = decode['coord']['lon'];
  temp = decode['main']['temp'];
  temp1 = temp.toInt();
  cityName = decode['name'];
  id = decode['weather'][0]['id'];
  WeatherModel weather = WeatherModel();
  icon1 = weather.getWeatherIcon(id);
  description = weather.getMessage(temp1);
  image= weather.getImages(temp1);
  print('temp1 = $temp1');
  print('cityname = $cityName');
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('$image'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var weatherData1 = await weatherModel.getWeatherTemp();
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      var cityName1 =
                          await Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return CityScreen();
                        },
                      ));
                      print('print = $cityName1');
                     if (cityName1 != null) {
                        var decode1 =
                            await weatherModel.getWeatherCity(cityName1);
                        cityName = decode1['name'];
                        temp = decode1['main']['temp'];
                        temp1 = temp.toInt();
                        print('temp1? = $temp1');
                        print('cityname? = $cityName');
                        getData(decode1);
                      }
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temp1°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      '$icon1',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  // "It's 🍦 time in San Francisco!",
                  "$description  in  $cityName!",


                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // print('temp1 = $temp1');
    // print('cityname = $cityName');
  }
}

// if(response.statusCode == 200) {
// print(response.body);
