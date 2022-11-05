import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      fontFamily:"opensans",
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
      
    
    );
  }
}


