// ignore_for_file: prefer_const_constructors, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:french/screens/drawer.dart';
import 'package:french/screens/formal.dart';
import 'package:french/screens/informal.dart';
import 'package:french/screens/splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(
    title: '',
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Contents'),
              centerTitle: true,
              backgroundColor: Color.fromRGBO(117, 218, 255, 1),
              bottom: TabBar(indicatorColor: Colors.white, tabs: [
                Tab(
                  child: Text('Informal Letter'),
                ),
                Tab(
                  child: Text('Formal Letter'),
                )
              ]),
            ),
            drawer: Burger(),
            body: TabBarView(children: [Informals(), Formals()]),
          )),
    );
  }
}
