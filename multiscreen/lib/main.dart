import 'package:flutter/material.dart';

void main() { runApp(MaterialApp(
  title: 'Multiscreen Demo',
  initialRoute: '/',
  routes:{
    '/' : (context) => HomeScreen(),
    '/innerscreen' : (context) => InnerScreen()
  },

));
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: (){
              print('Go to Inner Screen');
              Navigator.pushNamed(context, '/innerscreen');
            },
          )
        ],
      ),
      body: Center(child: new Text('Welcome Home')),
    );
  }
}

class InnerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Inner Page'),
      ),
      body: Center(child: new Text('Welcome Inner Screen'))
    );
  }
}