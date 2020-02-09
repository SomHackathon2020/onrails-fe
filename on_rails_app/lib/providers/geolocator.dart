import 'package:geolocator/geolocator.dart';


class GeolocatorService{

  
  //GeolocationStatus geolocationStatus  = await geolocator.checkGeolocationPermissionStatus();

  Future<Position> getPos()async{
    Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
    try {
    Position position = await geolocator.getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);
    return position;
    } catch (e){ 
    print("puta vida");
    return new Position();
    }
  }



}