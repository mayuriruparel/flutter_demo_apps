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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text('Row Container 1'), height: 50, width: 80, color: Colors.blueGrey, ),
                  SizedBox(width: 10,),
                  Container(child: Text('Row Container 2'), height: 50, width: 80, color: Colors.amberAccent, ),
                  SizedBox(width: 10,),
                  Container(child: Text('Row Container 3'), height: 50, width: 80, color: Colors.blueGrey, ),
                  
                ],
            ),
            SizedBox(height: 10,),
            Container(child: Text('1'), height: 50, width: screenWidth*0.9, color: Colors.blueAccent, ),
            SizedBox(height: 10,),
            Container(child: Text('2'), height: 150, width: screenWidth*0.9, color: Colors.amberAccent, ),
            SizedBox(height: 10,),
            Container(child: Text('3'), height: 50, width: screenWidth*0.9, color: Colors.blueGrey, ),
          ],
        ),
      ),
    );
  }
}