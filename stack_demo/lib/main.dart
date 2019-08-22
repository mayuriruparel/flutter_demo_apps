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
          title: Text('Stack Widget Demo'),
        ),
        body: 
        // Container(
        //   height: 200,
        //   child: Stack(
        //     children: <Widget>[

        //       Container(
        //           height: 200,
        //           width: MediaQuery.of(context).size.width,
        //           child: Image.network(
        //             'https://images.pexels.com/photos/462044/pexels-photo-462044.jpeg',
        //             fit: BoxFit.fill,
        //           )),

        //           Container(color: Colors.black.withOpacity(0.5),),

        //           Container(
        //             alignment: Alignment.bottomLeft,
        //             padding: EdgeInsets.all(20),
        //             child: Text('Green Mountains', style:TextStyle(color: Colors.white, fontSize:25)))


        //     ],
        //   ),
        // )

        Center(
          child: Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amberAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
        );
  }
}
