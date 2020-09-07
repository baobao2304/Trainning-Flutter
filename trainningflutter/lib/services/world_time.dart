import 'package:http/http.dart';
import 'dart:convert';
class WorldTime{

  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location,this.flag,this.url});

  Future<void> getTime() async{
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/Europe/Astrakhan');
      Map map = jsonDecode(response.body);
      // print(map);
    }catch(e){

    }
  }

}