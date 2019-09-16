import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  void setValues() async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    // set values

    sharedPrefs.setString('user_name', 'mayuri24');
    sharedPrefs.setString('user_id', '1087');
    sharedPrefs.setString('notification_prefs', 'on');
    print('Values Set in Shared Prefs!!');
  }
  

  void getValues() async {
    print('Getting Values from shared Preferences');
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    String user_name = sharedPrefs.getString('user_name');
     String user_id = sharedPrefs.getString('user_id');
     String notification_prefs = sharedPrefs.getString('notification_prefs');

     print('user_name: ${user_name}');
     print('user_id: ${user_id}');
     print('notification_prefs: ${notification_prefs}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Prefs Demo'),),
      body: Column(
        children: <Widget>[
          Container(child: RaisedButton(
            child: Text('Set Values'), textColor: Colors.white,color: Colors.blueAccent,
            onPressed: () async{
              setValues();
            },
          ),),

            Container(child: RaisedButton(
            child: Text('Get Values'), textColor: Colors.white,color: Colors.blueAccent,
            onPressed: () async{
              getValues();
            },
          ),),

        ],
      ),
    );
  }
}