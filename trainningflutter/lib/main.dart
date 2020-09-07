// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainningflutter/Page/home.dart';
import 'package:trainningflutter/Page/choose_location.dart';
import 'package:trainningflutter/Page/loading.dart';

import 'quote_card.dart';
import 'quote.dart';
// void main() {
//   runApp(MyApp());
// }
//demo
// void main() => runApp(MaterialApp(
//   home: ExListofData()
// ));

// void main() => runApp(MaterialApp(
// //   initialRoute: '/home',
// //   routes: {
// //     '/':(context) => LoadingPage(),
// //     '/home':(context) => Home(),
// //     '/location':(context) => ChooseLocation(),
// //   },
// // ));

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/':(context) => LoadingPage(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },
));

//  Stateless: cannot  change over time
// build function only runs once
// Stateful: can  change over time
// setState() triggers the build function

// initState()
// called only once when the widget is created
// subscribe to streams or any object that could change our widgetdata
// build()
// build  the widget tree
// a build is triggered every time we use  setState()
// dispose()
// when the widget/state object is removed


// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // throw UnimplementedError();
//     return Scaffold(
//       appBar: AppBar(title: Text('text of app bar'),
//           centerTitle: true,
//           backgroundColor: Colors.red [600]),
//       body: Center(
//         // start container & padding
//
//         // end container & padding
//         //start button & icon
//         // BUTTONs
//
//         // th1
//         // child: RaisedButton(onPressed: (){
//         //                       print("button active complete");
//         //                     },
//         //                     child: Text('click button'),
//         //                     color: Colors.red,),
//
//         // th2
//         // child: RaisedButton.icon(
//         //   onPressed: (){},
//         //   icon: Icon(Icons.mail),
//         //   label: Text('mail of me'),
//         //   color: Colors.cyanAccent,
//         // ),
//
//         // th3
//         // child: IconButton(
//         //   onPressed: (){
//         //     print('Click active complete');
//         //   },
//         //   icon: Icon(Icons.alternate_email),
//         //   color:  Colors.amber,
//         // ),
//
//         // ICONs
//
//         // child: Icon(Icons.airport_shuttle,
//         // color: Colors.amberAccent,
//         // size: 50.0,),
//         //end button & icon
//         // start Image & Assets
//
//         //th1
//         // child: Text('Hello world!!  Mr Bảo ',
//         //   style: TextStyle(fontSize: 20.0,
//         //       fontWeight: FontWeight.bold,
//         //       letterSpacing: 2.0,
//         //       color: Colors.green[600],
//         //       fontFamily: 'Pacifico'
//         //   ),),
//
//         //th2
//         // child: Image(
//         //   // call api image NetworkImage()
//         //   // image: NetworkImage('https://wokejournal.com/wp-content/uploads/2019/10/dims.jpg'),
//         //   image: AssetImage('assets/hinhofbao.jpg'),
//         // ),
//
//         //th3
//         // child: Image.asset('assets/hinhofbao.jpg'),
//         //th4
//         // child: Image.network('https://wokejournal.com/wp-content/uploads/2019/10/dims.jpg'),
//         // end Image & Assets
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         child: Text('click'),
//         backgroundColor: Colors.red[600],
//       ),
//     );
//   }
//
// }

class ExListofData extends StatefulWidget{
  @override
  _ExListofDataState createState() => _ExListofDataState();
}

class _ExListofDataState extends State<ExListofData> {
  List<Quote> quotesCustomClasses = [
    Quote(author:'hững sáng tạo công nghệ, những tính năng tân tiến nhất k' ,text: ' - Sức mạnh bảo mật vượt trội trong kỷ ngu'),
    Quote(author:'hững sáng tạo công nghệ,  nhất k2' ,text: ' - Sức mạnh  trong kỷ ngu2'),
    Quote(author:'hững sáng tạo công ng' ,text: ' - Sức mạnh bả ngu'),
    Quote(author:'hững g nghệ,  nhất k2' ,text: ' - Sứng kỷ ngu2'),
  ];
  List<String> quotes = [
    'SÁNG TẠO THAY ĐỔI CUỘC CHƠI, VSMART TIÊN PHONG MỞ RA KỶ NGUYÊN CÔNG NGHỆ MỚI',
  'Ngày mà những sáng tạo công nghệ, những tính năng tân tiến nhất không chỉ được quyết định bởi những cái tên “lão làng”, mà còn là cuộc chơi của những tay chơi mới dám bứt phá để thay đổi, để tái định hình thế giới công nghệ tương lai... đã đến.'

  'Sẵn sàng chào đón thế hệ smartphone ưu việt mới tích hợp cả hai công nghệ tiên phong:'

  'MÀN HÌNH VÔ KHUYẾT ĐẦU TIÊN TRÊN THẾ GIỚI - Camera ẩn dưới màn hình, nâng tầm trải nghiệm không giới hạn.'

  'BẢO MẬT LƯỢNG TỬ - Sức mạnh bảo mật vượt trội trong kỷ nguyên số đa kết nối.'

  'Cột mốc đánh dấu đưa Việt Nam lên bản đồ công nghệ quốc tế. Một sản phẩm ghi dấu trí tuệ Việt - khát khao đột phá, không ngừng vươn mình, hoá giải những bài toán công nghệ của thời đại.'

  'Sắp xuất hiện.'

  'Vsmart - Sáng Tạo Thay Đổi Cuộc Chơi'
  ];


  // template 1
  Widget quoteTemplate(quote){
    return QuoteCardd(quote: quote);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('AweSome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        //th1 use list data
        // children: quotes.map( (quotes) => (Text(quotes)) ).toList()
        //th2 use  model with extracting widgets
            children: quotesCustomClasses.map( (quotess) => QuoteCardd(
                quote:quotess,
                delete: (){
                  setState(() {
                    quotesCustomClasses.remove(quotess);
                  });
                },
            ) ).toList()

      ),

    );
  }
}




class QuoteCard extends StatefulWidget{
  @override
  _QuoteCardState createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Test extends StatefulWidget{
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test>{

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation:0.0 ,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:CircleAvatar(
                backgroundImage: AssetImage('assets/hinhofbao.jpg'),
                radius: 40.0,

              ),
            ),

            SizedBox(height: 20.0,),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Bao-Perfect-1',
              style: TextStyle(
                  color: Colors.lightBlueAccent[600],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'Curren ninja level',
              style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '1',
              style: TextStyle(
                  color: Colors.green[600],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'lebao230499@gmail.com',
                  style: TextStyle(
                      color: Colors.deepPurpleAccent[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}

class NinjaCard1 extends StatelessWidget{

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation:0.0 ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ninjaLevel += 1;


        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:CircleAvatar(
                backgroundImage: AssetImage('assets/hinhofbao.jpg'),
                radius: 40.0,

              ),
            ),

            SizedBox(height: 20.0,),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Bao-Perfect-1',
              style: TextStyle(
                  color: Colors.lightBlueAccent[600],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'Curren ninja level',
              style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.green[600],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'lebao230499@gmail.com',
                  style: TextStyle(
                      color: Colors.deepPurpleAccent[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }}

class NinjaCard extends StatefulWidget{
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation:0.0 ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:CircleAvatar(
                backgroundImage: AssetImage('assets/hinhofbao.jpg'),
                radius: 40.0,

              ),
            ),

            SizedBox(height: 20.0,),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.red,
                letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Bao-Perfect-1',
              style: TextStyle(
                color: Colors.lightBlueAccent[600],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'Curren ninja level',
              style: TextStyle(
                color: Colors.red,
                letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.green[600],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50.0,),
            Row(
              children: <Widget>[
                 Icon(
                   Icons.email,
                   color: Colors.grey,
                 ),
                 SizedBox(width: 10.0,),
                Text(
                  'lebao230499@gmail.com',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('text of app bar'),
          centerTitle: true,
          backgroundColor: Colors.red [600]),
      body: Row(
        // th1 can giua
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex:2,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.cyan,
              child: Text('text of row 1'),
            )
          ),
          Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.cyan,
                child: Text('text of row 2'),
              )
          ),
          Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.cyan,
                child: Text('text of row 3'),
              )
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

