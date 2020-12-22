import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(    
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  List<String> listItems = List<String>.generate(100, (i) => "List Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Demo'),),     
      body:ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.snooze,size: 40,),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${listItems[index]}', style: TextStyle(fontSize: 16),),
                      Text('This is sub heading',style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  ),
                  trailing: Icon(Icons.fast_forward),
                  ),
                  Divider()
              ],
            ),
          );
        },
      )
      
      /* 
      // Stctic List View
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            ListTile(title: Text('Call'), trailing: Icon(Icons.call),),
            ListTile(title: Text('Video Call'), trailing: Icon(Icons.video_call),),
            ListTile(title: Text('Text Message'), trailing: Icon(Icons.sms),),
            ListTile(title: Text('Call'), trailing: Icon(Icons.call),),
            ListTile(title: Text('Video Call'), trailing: Icon(Icons.video_call),),
            ListTile(title: Text('Text Message'), trailing: Icon(Icons.sms),),
            ListTile(title: Text('Call'), trailing: Icon(Icons.call),),
            ListTile(title: Text('Video Call'), trailing: Icon(Icons.video_call),),
            ListTile(title: Text('Text Message'), trailing: Icon(Icons.sms),),
          ],
        ),
       ), */

    );
  }
}
