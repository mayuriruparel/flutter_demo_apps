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
        title: Text('Horizontal Lists'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg')),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg')),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg')),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg')),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg')),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 100, 
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: new DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg'),
                        fit: BoxFit.cover                        
                        )
                      ),
                    ),               
                
                SizedBox(width: 10,),
                Container(
                    width: 100, 
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: new DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg'),
                        fit: BoxFit.cover                        
                        )
                      ),
                    ),
                     SizedBox(width: 10,),
                Container(
                    width: 100, 
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: new DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg'),
                        fit: BoxFit.cover                        
                        )
                      ),
                    ),
                     SizedBox(width: 10,),
                Container(
                    width: 100, 
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: new DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg'),
                        fit: BoxFit.cover                        
                        )
                      ),
                    ),
                     SizedBox(width: 10,),
                Container(
                    width: 100, 
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: new DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/998641/pexels-photo-998641.jpeg?cs=srgb&dl=astronomy-constellation-dark-998641.jpg&fm=jpg'),
                        fit: BoxFit.cover                        
                        )
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
