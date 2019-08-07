import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
       // fontFamily: 'Lacquer'
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Hello World', style: TextStyle(fontSize: 20),),
            Text('This is Bold Text', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('This is Italic Text', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
            Text('This is Colored Text', style: TextStyle(fontSize: 20, color: Colors.pink),),
            Text('Hello World Custom Fonts', style: TextStyle(fontSize: 20, fontFamily: 'Lacquer'),),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 textAlign: TextAlign.justify,           
              ),
            )
            

          ],
        ),
      ),
    );
  }
}