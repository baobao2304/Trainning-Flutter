import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data ={};
  @override
  Widget build(BuildContext context) {
    // binding pass data route from loading page
    data = ModalRoute.of(context).settings.arguments;
    print('pass data complete');
  print(data);
    print('pass data done');
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/location');
              },
              label: Text('BUTTON EDIT'),
              icon: Icon(Icons.edit),

            )
          ],

        )),

    );
  }
}
