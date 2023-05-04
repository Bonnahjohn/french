// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';
import 'package:french/screens/config.dart';
import 'package:french/screens/formal.dart';
import 'package:french/screens/informal.dart';
import 'package:french/screens/media.dart';
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
                  height: 50,
                ),
                //mmmmmmmmmmmmmmmmmmmmmmmm
                //Formal letter button
                //mmmmmmmmmmmmmmmmmmmmm
                TextButton.icon(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(117, 218, 255, 1))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Formals())));
                    },
                    icon: SizedBox(
                      height: 40,
                      width: 60,
                      child: Image.asset('assets/images/letter.png',
                          fit: BoxFit.contain),
                    ),
                    label: Text(
                      'Formal Letter',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    )),
                SizedBox(
                  height: 20,
                ),
                //mmmmmmmmmmmmmmmmmmmmmmmm
                //Informal letter button
                //mmmmmmmmmmmmmmmmmmmmm
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(117, 218, 255, 1),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Informals())));
                  },
                  icon: SizedBox(
                    width: 60,
                    height: 40,
                    child: Image.asset(
                      'assets/images/informal.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  label: Text(
                    'Informal Letter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //mmmmmmmmmmmmmmmmmmmmmmmm
                //template button
                //mmmmmmmmmmmmmmmmmmmmm
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(117, 218, 255, 1),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Media())));
                  },
                  icon: SizedBox(
                    width: 135,
                    height: 40,
                    child: Image.asset(
                      'assets/images/gallery.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  label: Text(
                    'Media',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
