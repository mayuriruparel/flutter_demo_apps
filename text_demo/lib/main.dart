import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Pacifico'

      ),
      home: MyHomePage(),
    );
  } 
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styling'),), 
      body: Container(padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[          
          Text('Hello Bold Text',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Text('Hello Italic Text',style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),),
           Text('Coloured Text',style: TextStyle(color: Colors.red, fontSize: 20),)
        ],
      ),
      ),   
    );
  }
}
