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
        title: Text('Grid View'),
      ),
      body: GridView.count(
          crossAxisCount:2,
          children: List.generate(20, (index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  //color: Colors.amberAccent, 
                  // decoration: BoxDecoration(
                  //   image: new DecorationImage(image: NetworkImage('https://images.pexels.com/photos/110854/pexels-photo-110854.jpeg'), fit: BoxFit.cover),
                  //   borderRadius: BorderRadius.all(Radius.circular(100))
                  //   ),
                  child: Image.network('https://images.pexels.com/photos/110854/pexels-photo-110854.jpeg', fit: BoxFit.cover,)
                  // Text(
                  //   'Item $index',
                  //   style: TextStyle(fontSize: 20),
                  // )
                  ),
            );
          })),
    );
  }
}
