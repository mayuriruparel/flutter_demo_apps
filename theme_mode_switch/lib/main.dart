import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => ThemeMode(), child: MyApp()));
}

class ThemeMode with ChangeNotifier {
  bool _lightmode = true;
  changemode() {
    _lightmode = !_lightmode;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final thmode = Provider.of<ThemeMode>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: thmode._lightmode ? Brightness.light : Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {      
    final thmode = Provider.of<ThemeMode>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Change Theme'),
              Switch(
                value: thmode._lightmode,
                onChanged: (bool val) {
                  thmode.changemode();
                },
              ),
            ],
          ),
        ));
  }
}
