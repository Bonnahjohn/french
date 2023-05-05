// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'config.dart';
import 'package:french/main.dart';

import 'media.dart';

class Formals extends StatefulWidget {
  const Formals({super.key});

  @override
  State<Formals> createState() => _FormalsState();
}

class _FormalsState extends State<Formals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 218, 255, 1),
          title: Text('Formal Letter'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                SelectableText(
                  FormalIntro,
                  style: TextStyle(fontSize: 16),
                ),
                Paras(),
                SizedBox(
                  height: 60,
                ),
                Sample()
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
            text: Tip2,
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
            text: Tip1,
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
            text: Tip11,
          ),
          TextSpan(
            text: '\n4.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip12,
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
            text: Tip4,
          ),

          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 6
          TextSpan(
            text: '\n6.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip5,
          ),

          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 7
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

          TextSpan(
            text: '\n7.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip6,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 8
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\n8.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip7,
          ), //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 9
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\n9.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip8,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 10
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\n10.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip9,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm mmm
          //Guide 11
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
          TextSpan(
            text: '\n11.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amber),
          ),
          TextSpan(
            text: Tip10,
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
                  'Go to the media section to view sample of the formal letter writing images.\n',
              style: TextStyle(color: Colors.blue)),
          TextSpan(
            text: '\nExample of the Formal letter',
            style: TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Votre Nom'),
              Text('[Place],Le 4 mai 2023'),
            ],
          ),
          SizedBox(height: 16.0),
          Text('Votre Adresse'),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Nom et Prénom du destinataire'),
                  Text('Titre professionnel'),
                  Text('Nom de l\'entreprise'),
                  Text('Adresse de l\'entreprise'),
                  Text('Code postal, Ville'),
                  Text('Pays'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            '[Title of the subject ]',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
          ),
          Text('Monsieur le Directeur,'),
          SizedBox(height: 16.0),
          Text(
              'Je vous écris pour [state reason for writing the letter]. Je suis [briefly describe your position or relationship to the recipient if relevant].'),
          SizedBox(height: 16.0),
          // Body of the letter
          // Closing paragraph
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                  'Je vous prie d\'agréer, Monsieur le Directeur, \nl\'expression de mes salutations distinguées.'),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Votre Nom'),
            ],
          ),
        ],
      ),
    );
  }
}
