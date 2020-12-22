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
      appBar: AppBar(title: Text('Progressbars Demo')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(height: 10,),
              CircularProgressIndicator(backgroundColor: Colors.redAccent,),
              SizedBox(height: 10,),
              SizedBox(child: CircularProgressIndicator(), height: 100, width: 100,),
              SizedBox(height: 10,),
              LinearProgressIndicator(),
              SizedBox(height: 30,),
              LinearProgressIndicator(backgroundColor: Colors.teal,),
             
            ],
          ),
        ),
      ),
    );
  }
}