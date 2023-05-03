// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:french/screens/config.dart';
import 'package:french/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => MyApp())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(117, 218, 255,
          1), // Set the background color of the container to green
      child: Center(
        child: Container(
          color: Colors.transparent,
          child: Image.asset('assets/images/splash.png'),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  Welcome,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
        )));
  }
}
