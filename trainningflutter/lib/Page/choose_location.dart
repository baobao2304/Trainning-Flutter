import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
// learning step how to use Asynchronous Code
  // void getData(){
  //   Future.delayed(Duration(seconds: 3),(){
  //     print('yoshi second 3');
  //   });
  //   Future.delayed(Duration(seconds: 2),(){
  //     print('yoshi,vega second 2');
  //   });
  //   print('statement');
  //
  //
  // }

  //th2
  // void getData() async{
  //     await Future.delayed(Duration(seconds: 3),(){
  //       print('yoshi second 3');
  //     });
  //     Future.delayed(Duration(seconds: 2),(){
  //       print('yoshi,vega second 2');
  //     });
  //     print('statement');
  // }


  //th3
  void getData() async{
      String str1 =  await Future.delayed(Duration(seconds: 3),(){
        print('yoshi second 3');
      });
      String str2 = await Future.delayed(Duration(seconds: 2),(){
        print('yoshi,vega second 2');
      });
      print('$str1 - $str2');
  }
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Choose a Location'),
        elevation: 0,
      ),
      body:  Text('Choose location pages screen'),
    );
  }
}
