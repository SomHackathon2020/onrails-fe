import 'package:geolocator/geolocator.dart';


class GeolocatorService{

  
  //GeolocationStatus geolocationStatus  = await geolocator.checkGeolocationPermissionStatus();

  Future<Position> getPos()async{
    Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
    try {
    Position position = await geolocator.getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
    return position;
    } catch (e){ return new Position();}
  }

}