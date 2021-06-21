import 'package:flutter/material.dart';
import 'package:restaurent/pages/HomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.drag_indicator_sharp,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text(
              'Restaurant',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.black,
              )
            ],
          ),
          body: HomePage()),
    );
  }
}
