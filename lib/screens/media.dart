// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  const Media({super.key});

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
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text('Formal Letter'),
              ),
              Tab(
                child: Text('Informal Letter'),
              ),
            ]),
            title: Text('Sample images of letter'),
          ),
          body: TabBarView(children: [Sider(), Text('data')])),
    );
  }
}

class Sider extends StatelessWidget {
  const Sider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      width: 100,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'To view or zoom the picture,please kindly double tap on the image.',
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/images/letter.png',
              width: 600,
              height: 400,
            ),
          ),
          Expanded(
            flex: 4,
            child: Image.asset(
              'assets/images/letter.png',
              width: 600,
              height: 400,
            ),
          )
        ],
      ),
    );
  }
}
