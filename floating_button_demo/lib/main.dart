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
      appBar: AppBar(
        title: Text('Floating Button Demo'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.save),            
            //shape: RoundedRectangleBorder(),
            mini: true
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),            
            //shape: RoundedRectangleBorder(),
            mini: true
          )
        ],
      ),
    );
  }
}
