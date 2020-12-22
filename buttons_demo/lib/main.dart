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
        title: Text('Buttons Demo'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  onPressed: null,
                  child: Text(
                    'Disabled Button',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                RaisedButton(
                  color: Colors.pink,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Raised Button',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.redAccent,
                  elevation: 20,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Elevated Button',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rounded Button',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.orangeAccent,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Round Button',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.amber,
                  shape: OutlineInputBorder(),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Outline Button',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Custom Shape Button',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[Colors.red,Colors.blueGrey, Colors.pink])
                    ),
                      child: Text(
                    'Gradient',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                SizedBox(height: 10,),
                RaisedButton(
                  color: Colors.green,
                  shape: CircleBorder(),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Text(
                      'Circular Button',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
