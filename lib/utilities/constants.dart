import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontFamily: 'Spartan MB',
);
const kmage = DecorationImage(
  image: AssetImage('images/city_background.jpg'),
  fit: BoxFit.cover,
);

const kConditionTextStyle = TextStyle(
  fontSize: 50.0,
);
const kTextFIled = InputDecoration(
    prefixIcon: Icon(
      Icons.location_city,
      color: Colors.black,
    ),
    border:OutlineInputBorder(
        borderRadius : BorderRadius.all(Radius.circular(14.0))
    ),
    filled: true,
    fillColor: Colors.white,
    labelText: 'CityName',
    labelStyle: TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.italic,
      fontSize: 14.0,
    ),
    hintText: 'ENTER THE CITY NAME',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontStyle: FontStyle.italic,
      fontSize: 12.0,
    )

);