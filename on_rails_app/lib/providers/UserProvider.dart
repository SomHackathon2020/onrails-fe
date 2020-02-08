import 'dart:convert';

import 'package:on_rails_app/models/usuario.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class UserProvider {
    String _token = '';
    String _url      = 'may66.ddns.net:3000/api/';
    
    Future<User> _procesarRespuesta(Uri url) async{
      
      final resp = await http.get( url );
      print(resp);
      final decodedData = json.decode(resp.body);
      print(decodedData);
      final user = new User.fromJson(decodedData);
      print(user.toString());
      return user;
    }

    Future<User> getMyUserInfo() async{
      var _dio = new Dio();
      var options = new Options();
      options.headers['mine_cart_number'] = '1234';
      options.contentType = 'application/json';
      String url = "http://may66.ddns.net:3000/api/user/0";

      //final url = Uri.https(_url, 'user/0');
      Response res =  await _dio.get(url, options: options);
      //final decodedData = json.decode(res.data.toString());
      final user = new User.fromJson(res.data);
      print(user.name);
      print(user.levelsId);
      return user;
      //return await _procesarRespuesta(url);
    }

    Future<List<User>> getMyFriends() async {
      var _dio = new Dio();
      var options = new Options();
      options.headers['mine_cart_number'] = '1234';
      options.contentType = 'application/json';
      String url = "http://may66.ddns.net:3000/api/user/friends";

      //final url = Uri.https(_url, 'user/0');
      Response res =  await _dio.get(url, options: options);
      //final decodedData = json.decode(res.data.toString());
      final users = new Users.fromJsonList(res.data);

      return users.items;
      //return await _procesarRespuesta(url);
    }
    


}