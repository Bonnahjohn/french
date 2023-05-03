// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:french/screens/splas.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Splash(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(elevation: 0)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('data'),
          ),
          body: Center(
            child: Text('me koma'),
          )),
    );
  }
}
