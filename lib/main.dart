// ignore_for_file: prefer_const_constructors, unnecessary_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:french/screens/formal.dart';
import 'package:french/screens/informal.dart';
import 'package:french/screens/splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

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

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: double.maxFinite,
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.8),
          boxShadow: [BoxShadow(blurRadius: 1, blurStyle: BlurStyle.outer)]),
      child: ListView(
        children: [
          Text(
            'French Letter Writing',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.translate_outlined,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'Translator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),

          //mmmmmmmmmmmmmmmmmmmmmm  policy sector mmmmmmmmmmmm
          Divider(
            color: Colors.white,
            height: 30,
            indent: 20,
            endIndent: 20,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          //mmmmmmmmmmmm feedback
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          //mmmmmmmmmmmm feedback
          ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              size: 30,
              color: Colors.white,
            ),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
            onTap: () {
              launch(
                  'https://sites.google.com/view/frenchify-privacy-policy/home');
            },
          ),
        ],
      ),
    );
  }
}
