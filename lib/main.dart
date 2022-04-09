import 'package:flutter/material.dart';
import 'package:recipes/screens/alon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      theme: ThemeData(
        //backgroundColor: Colors.red,
        primaryColor: Color(0xff263341),
        accentColor: Color(0xff8DB646),
      ),
      home: HomeAlon(),
    );
  }
}