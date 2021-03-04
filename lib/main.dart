import 'package:flutter/material.dart';
import 'package:Voyage/screens/home.dart';
import 'package:Voyage/screens/InputPage.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Rubik',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/inputPage':(context)=> InputPage(),
      },
    );
  }
}

