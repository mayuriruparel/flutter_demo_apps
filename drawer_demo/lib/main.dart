import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
      routes: {
        '/screenone' : (context) => ScreenOne(),
        '/screentwo' : (context) => ScreenTwo()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('Drawer Demo')),
        body: Center(child: new Text('Hello Home!')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(
                child: Center(
                    child: new Text(
                  'Drawer Demo',
                  style: TextStyle(color: Colors.white),
                )),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                  leading: new Icon(Icons.book),
                  title: Text('Screen One'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screenone');
                  }),
              ListTile(
                  leading: new Icon(Icons.timer),
                  title: Text('Screen Two'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screentwo');
                  })
            ],
          ),
        ));
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Screen One'),
      ),
      body: Center(child: new Text('Hello Screen One')),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Screen Two'),
      ),
      body: Center(child: new Text('Hello Screen Two')),
    );
  }
}