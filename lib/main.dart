// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:french/screens/config.dart';
import 'package:french/screens/splash.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 218, 255, 1),
          title: Text("French Letter Writing"),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  Welcome,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
