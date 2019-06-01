
import 'package:flutter/material.dart';
import 'package:iwent/pages/home.page.dart';
import 'package:iwent/pages/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'iWent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage
      (),
    );
  }
}
