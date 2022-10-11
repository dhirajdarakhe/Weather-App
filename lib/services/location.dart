import 'package:geolocator/geolocator.dart';


class Location
{
  double latitude;
  double longitude;


  Future<void> getPosition () async
  {
    // Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    // latitude = position.latitude;
    // longitude =  position.longitude;

    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude =  position.longitude;
    }
    catch(e)
    {
      print(e);
    }
  }

}