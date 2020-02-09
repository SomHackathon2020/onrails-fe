import 'package:geolocator/geolocator.dart';


class GeolocatorService{

  
  //GeolocationStatus geolocationStatus  = await geolocator.checkGeolocationPermissionStatus();

  Future<Position> getPos()async{
    Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
    Position position = await geolocator.getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);

    
    return position;
  }



}