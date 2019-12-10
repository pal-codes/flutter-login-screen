import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'login screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      Positioned(
        top: 90.0,
        child: Center(
            child: Column(
          children: <Widget>[
            Text('Welcome to',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
            Text('obodo',
                style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.w200)),
          ],
        )),
      ),
      Positioned(
        top: 180.0,
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Text('Sign In',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700)),
        ),
      ),
      Positioned(
        top: 320.0,
        child: Container(
            width: 280.0,
            child: TextField(
                decoration: InputDecoration(
              hintText: 'email',
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ))),
      ),
      Positioned(
        bottom: 250.0,
        child: Container(
            width: 280.0,
            child: TextField(
                decoration: InputDecoration(
              hintText: 'password',
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ))),
      ),
      Positioned(
        bottom: 180.0,
        child: Text(
          'Continue with',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
      ),
      Positioned(
        bottom: 50,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.access_alarm, size: 40.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.access_alarm, size: 40.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.access_alarm, size: 40.0),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
