// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:french/screens/media.dart';
import 'config.dart';
import 'package:french/main.dart';

class Informals extends StatefulWidget {
  const Informals({super.key});

  @override
  State<Informals> createState() => _InformalsState();
}

class _InformalsState extends State<Informals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 218, 255, 1),
          title: Text('Informal Letter'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                SelectableText(
                  Informal,
                  style: TextStyle(fontSize: 16),
                ),
                Paras(),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        )));
  }
}

class Paras extends StatefulWidget {
  const Paras({super.key});

  @override
  State<Paras> createState() => _ParasState();
}

class _ParasState extends State<Paras> {
  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: '1.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Guide1,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 2
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\n2.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Guide2,
          ),
          TextSpan(
            text: '\nNOTE.',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.red),
          ),
          TextSpan(
            text: Note,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 3
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\n3.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Guide3,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 4
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

          TextSpan(
            text: '\n4.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Guide4,
          ),
          TextSpan(
            text: '\nNOTE.',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.red),
          ),
          TextSpan(
            text: NB,
          ),

          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 5
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

          TextSpan(
            text: '\n5.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Guide5,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Example
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\nHere is an example of the ending.\n',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: 'Amicalement, \n John',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.green),
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Last intro
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: Last,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Last intro
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Media())));
                },
              text:
                  'Go to the media section to view sample of the informal letter writing images.',
              style: TextStyle(color: Colors.blue))
        ],
      ),
    );
  }
}
