// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:french/screens/feedback.dart';
import 'package:french/screens/translator.dart';
import 'package:french/screens/zoom.dart';

class Media extends StatefulWidget {
  const Media({Key? key}) : super(key: key);

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 218, 255, 1),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Translator())));
                },
                icon: Icon(Icons.translate_outlined)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Feedbacks())));
                },
                icon: Icon(Icons.feedback_outlined)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => About())));
                },
                icon: Icon(Icons.info_outline)),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('Formal Letter'),
              ),
              Tab(
                child: Text('Informal Letter'),
              ),
            ],
          ),
          title: const Text('Sample images of letter'),
        ),
        body: const TabBarView(
          children: [Sider(), Zooma()],
        ),
      ),
    );
  }
}

class Sider extends StatelessWidget {
  const Sider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'To view or zoom the picture, double tap on the image.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.green,
                height: 30,
                thickness: 10,
              ),
              Image.asset(
                'assets/images/F1.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.green,
                height: 30,
                thickness: 10,
              ),
              Image.asset(
                'assets/images/F2.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ],
    );
  }
}
