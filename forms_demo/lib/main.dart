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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
 
  @override
  void dispose(){
    firstnameController.dispose();
    lastnameController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms Validations Demo'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    controller: firstnameController,
                    validator: (value){
                      if(value.isEmpty){
                        return 'First Name Should Not Be Empty';
                      }
                      return null;
                    },
                    
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    controller: lastnameController,
                    validator: (value){
                      if(value.isEmpty){
                        return 'Last Name Should Not Be Empty';
                      }
                      return null;
                    },
                    
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  RaisedButton(
                    onPressed: () {
                      if(_formKey.currentState.validate()){
                       
                          var firstname = firstnameController.text;
                          var lastname = lastnameController.text;

                          print('First Name: ${firstname} Last Name: ${lastname}');
                      }
                    },
                    child: Text('Submit'),
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
