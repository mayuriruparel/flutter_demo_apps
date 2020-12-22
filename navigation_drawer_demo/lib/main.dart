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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer Demo'),),
      body: Center(child: Container(child: Text('Hello Navigation Drawer!'),)),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Image.network(
                'https://images.pexels.com/photos/110854/pexels-photo-110854.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              fit: BoxFit.fill,
              )
              
              /*Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,child: Row(
               crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('Mayuri Ruparel', style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),),*/


            ),
            ListTile(leading: Icon(Icons.home), title: Text('Home'),),
            Divider(),
            ListTile(leading: Icon(Icons.search), title: Text('Search'),),
            Divider(),
            ListTile(leading: Icon(Icons.call), title: Text('Call'),),
            Divider(),
          ],
        ),
      ),
      
    );
  }
}