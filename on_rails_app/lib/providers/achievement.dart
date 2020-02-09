


import 'package:dio/dio.dart';
import 'package:on_rails_app/models/logro.dart';

class AchievementProvider{
    String _token    = '';
    String _url      = 'may66.ddns.net:3000/api/';



    Future<List<Achievement>> getMyAchievements() async {
      var _dio = new Dio();
      var options = new Options();
      options.headers['mine_cart_number'] = '1234';
      options.contentType = 'application/json';
      String url = "http://may66.ddns.net:3000/api/user/achievements";

      //final url = Uri.https(_url, 'user/0');
      Response res =  await _dio.get(url, options: options);
      //final decodedData = json.decode(res.data.toString());
      final achievements = new Achievements.fromJsonList(res.data);

      return achievements.items;
      //return await _procesarRespuesta(url);
    }
}