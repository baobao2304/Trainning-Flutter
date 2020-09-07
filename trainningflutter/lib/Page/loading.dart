import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:trainningflutter/services/world_time.dart';
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  void getData() async{
    //th1
    // Response response = await get('https://jsonplaceholder.typicode.com/todos');
    // print(response.body);

    //th2 just a row đata
    Response response = await get('https://jsonplaceholder.typicode.com/todos');
    Map map = jsonDecode(response.body);
    print(map);
    print(map['userId']);
  }

  void getTime() async{
    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/Astrakhan');
    Map map = jsonDecode(response.body);
    print(map);
    String datetime = map['datetime'];
    String offset = map['utc_offset'];
    print(datetime);
    print(offset);
  }
  String time = 'loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin',flag: 'germany',url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getData();
    // getTime();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading page screen'),
    );
  }
}
