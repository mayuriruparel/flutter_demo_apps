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
        title: Text('Images Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('Including images from URL'),
            SizedBox(
              child: Image.network(
                  'https://images.pexels.com/photos/2150/sky-space-dark-galaxy.jpg?cs=srgb&dl=astronomy-black-wallpaper-constellation-2150.jpg&fm=jpg'),
              height: 200,
              width: 200,
            ) ,
            SizedBox(height: 10,),
            Text('Getting images from assets '),
            Container(
              //child: Image.asset('img/galaxy-milky-way.jpg'),
              height: 200,
              width: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: new DecorationImage(image: new ExactAssetImage('img/galaxy-milky-way.jpg')),
                borderRadius: BorderRadius.all(Radius.circular(50))), 
              ),
              
                         
          ],
        ),
      ),
    );
  }
}
