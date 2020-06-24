import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => Counter(),
    ),
    ChangeNotifierProvider(
      create: (context) => MyThemeColor(),
    )
  ], child: MyApp()));
}

class Counter with ChangeNotifier {
  int val = 0;
  void increment() {
    val += 1;
    notifyListeners();
  }
}

class MyThemeColor with ChangeNotifier {
  Color _themecolor = Colors.blue;
  Color get themecolor => _themecolor;
  set themecolor(Color newcolor) {
    _themecolor = newcolor;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final thcolor = Provider.of<MyThemeColor>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //  primarySwatch: thcolor._themecolor,
        primaryColor: thcolor._themecolor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: thcolor._themecolor
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
        title: Text('Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(child: Container(height: 30, width: 30, color: Colors.red,),
                      onPressed: () => Provider.of<MyThemeColor>(context, listen: false).themecolor= Colors.red,

                    ),
                    MaterialButton(child: Container(height: 30, width: 30, color: Colors.green,),
                      onPressed: () => Provider.of<MyThemeColor>(context, listen: false).themecolor= Colors.green,
                    ),
                    MaterialButton(child: Container(height: 30, width: 30, color: Colors.amber,),
                      onPressed: () => Provider.of<MyThemeColor>(context, listen: false).themecolor= Colors.amber,
                    )

                  ],
                ),
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context, counter, child) => Text(
                '${counter.val}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        onPressed: () =>
            Provider.of<Counter>(context, listen: false).increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
