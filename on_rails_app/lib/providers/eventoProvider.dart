import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:on_rails_app/models/evento.dart';
import 'package:on_rails_app/providers/geolocator.dart';

class EventProvider{

    String _token = '';
    String _url      = 'may66.ddns.net:3000/api/';
    GeolocatorService geolocatorService;
  
    Future<List<Evento>> getEvents() async {
      geolocatorService = GeolocatorService();
      Position pos = geolocatorService.getPos() as Position;
      print("lskrnfker"+ pos.altitude.toString());
      var _dio = new Dio();
      var options = new Options();
      options.headers['mine_cart_number'] = '1234';
      options.headers['lat'] = pos.latitude;
      options.headers['lon'] = pos.longitude;
      options.headers['radius'] = 10000;
      options.contentType = 'application/json';
      String url = "http://may66.ddns.net:3000/api/event";

      //final url = Uri.https(_url, 'user/0');
      Response res =  await _dio.get(url, options: options);
      //final decodedData = json.decode(res.data.toString());
      final eventos = new Eventos.fromJsonList(res.data);

      return eventos.items;
      //return await _procesarRespuesta(url);
    }

}