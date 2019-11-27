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
      appBar: AppBar(title: Text('Fade In Demo'),),
      body: Container(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif', 
        image: 'https://images.pexels.com/photos/2162/sky-space-dark-galaxy.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      ),
      ),
    );
  }
}
