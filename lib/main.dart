// ignore_for_file: prefer_const_constructors, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:french/screens/drawer.dart';
import 'package:french/screens/formal.dart';
import 'package:french/screens/informal.dart';
import 'package:french/screens/splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(117, 218, 255, 1),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Settings())));
                    },
                    icon: Icon(Icons.settings))
              ],
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
