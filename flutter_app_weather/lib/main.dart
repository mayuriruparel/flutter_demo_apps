import 'package:flutter/material.dart';
import 'package:flutterapp/listdata.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: WeatherItems.loadWeatherItem().length,
          itemBuilder: (context, index) {
        final WeatherItem listItem = WeatherItems.loadWeatherItem()[index];

        return Container(
            height: 110,
            child: Stack(
              children: [
               Container(
                   width: MediaQuery.of(context).size.width,
                   child: Image.asset(listItem.img, fit: BoxFit.fitWidth,)),
                Container(
                  color: Colors.black.withOpacity(0.5),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(listItem.time,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),

                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(listItem.location,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        )
                      ],
                    ),

                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.fromLTRB(0, 10, 20, 20),
                      child: Text(listItem.temperature,
                        style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ],
                )
              ],
            ));
      }),
    );
  }
}
