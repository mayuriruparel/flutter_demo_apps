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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double container_height = 100;
  double container_width = 100;
  Color container_color = Colors.redAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: container_width,
              height: container_height,
              color: container_color,             
            ),
            RaisedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                container_height=150;
                 container_width=200; 
               // container_color = Colors.greenAccent;                 
                });
              },
              color: Colors.blueAccent,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
