import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
//demo
void main() => runApp(MaterialApp(
  home: ColumOfFlutter()
));
//  Stateless: cannot  change over time
// Stateful: can  change over time
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true,
          backgroundColor: Colors.red [600]),
      body: Center(
        // start container & padding

        // end container & padding
        //start button & icon
        // BUTTONs

        // th1
        // child: RaisedButton(onPressed: (){
        //                       print("button active complete");
        //                     },
        //                     child: Text('click button'),
        //                     color: Colors.red,),

        // th2
        // child: RaisedButton.icon(
        //   onPressed: (){},
        //   icon: Icon(Icons.mail),
        //   label: Text('mail of me'),
        //   color: Colors.cyanAccent,
        // ),

        // th3
        // child: IconButton(
        //   onPressed: (){
        //     print('Click active complete');
        //   },
        //   icon: Icon(Icons.alternate_email),
        //   color:  Colors.amber,
        // ),

        // ICONs

        // child: Icon(Icons.airport_shuttle,
        // color: Colors.amberAccent,
        // size: 50.0,),
        //end button & icon
        // start Image & Assets

        //th1
        // child: Text('Hello world!!  Mr Bảo ',
        //   style: TextStyle(fontSize: 20.0,
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 2.0,
        //       color: Colors.green[600],
        //       fontFamily: 'Pacifico'
        //   ),),

        //th2
        // child: Image(
        //   // call api image NetworkImage()
        //   // image: NetworkImage('https://wokejournal.com/wp-content/uploads/2019/10/dims.jpg'),
        //   image: AssetImage('assets/hinhofbao.jpg'),
        // ),

        //th3
        // child: Image.asset('assets/hinhofbao.jpg'),
        //th4
        // child: Image.network('https://wokejournal.com/wp-content/uploads/2019/10/dims.jpg'),
        // end Image & Assets
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
  
}
class ColumOfFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true,
          backgroundColor: Colors.red [600]),
      body: Column(
        // th1 can giua
        mainAxisAlignment: MainAxisAlignment.start,
        // th2 can cuoi
        // mainAxisAlignment: MainAxisAlignment.end,
        // th3 can deu giua
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // th4 can deu form
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // th5
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // th6 can dau
        // mainAxisAlignment: MainAxisAlignment.start,

        // th1 can giua
        // crossAxisAlignment: CrossAxisAlignment.center,
        // th2 can cuoi
        crossAxisAlignment: CrossAxisAlignment.end,
        // th3 can deu giua
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // th4 can deu form
        // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
        // th5
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Hello'),
              Text('world'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.all(10.0),
            color: Colors.cyan,
            child: Text('text of columns 1'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.all(10.0),
            color: Colors.cyan,
            child: Text('text of columns 2'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.all(10.0),
            color: Colors.cyan,
            child: Text('text of columns 3'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );

  }

}

class RowOfFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true,
          backgroundColor: Colors.red [600]),
      body: Row(
        // th1 can giua
        // mainAxisAlignment: MainAxisAlignment.center,
        // th2 can cuoi
        // mainAxisAlignment: MainAxisAlignment.end,
        // th3 can deu giua
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // th4 can deu form
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // th5
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // th6 can dau
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('hello world !'),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child: Text('click me'),
          ),
          Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }

}

class ContainerAndPadding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true,
          backgroundColor: Colors.red [600]),
      body:
      Container(
        // MARGINS
        // th3
        // margin: EdgeInsets.fromLTRB(100.0,20.0,30.0,40.0),
        // th2
        // margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        // th1
        // margin: EdgeInsets.all(20.0),
        // PADDING
        // th3
        // padding: EdgeInsets.fromLTRB(100.0,20.0,30.0,40.0),
        // th2
        // padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        // th1
        // padding: EdgeInsets.all(20.0),
        color: Colors.green,
        child: Text('Hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }

}

class ButtonAndIcons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true, backgroundColor: Colors.red [600]),

      body: Center(
        //start button & icon
        // BUTTONs

        // th1
        // child: RaisedButton(onPressed: (){
        //                       print("button active complete");
        //                     },
        //                     child: Text('click button'),
        //                     color: Colors.red,),

        // th2
        // child: RaisedButton.icon(
        //   onPressed: (){},
        //   icon: Icon(Icons.mail),
        //   label: Text('mail of me'),
        //   color: Colors.cyanAccent,
        // ),

        // th3
        // child: IconButton(
        //   onPressed: (){
        //     print('Click active complete');
        //   },
        //   icon: Icon(Icons.alternate_email),
        //   color:  Colors.amber,
        // ),

        // ICONs

        // child: Icon(Icons.airport_shuttle,
        // color: Colors.amberAccent,
        // size: 50.0,),
        //end button & icon

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }

}

class ImageAndAssets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true, backgroundColor: Colors.red [600]),

      body: Center(

        // start Image & Assets

        //th1
        // child: Text('Hello world!!  Mr Bảo ',
        //   style: TextStyle(fontSize: 20.0,
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 2.0,
        //       color: Colors.green[600],
        //       fontFamily: 'Pacifico'
        //   ),),

        //th2
        // child: Image(
        //   // call api image NetworkImage()
        //   // image: NetworkImage('https://wokejournal.com/wp-content/uploads/2019/10/dims.jpg'),
        //   image: AssetImage('assets/hinhofbao.jpg'),
        // ),

        //th3
        // child: Image.asset('assets/hinhofbao.jpg'),
        //th4
        // child: Image.network('https://wokejournal.com/wp-content/uploads/2019/10/dims.jpg'),
        // end Image & Assets
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }

}

