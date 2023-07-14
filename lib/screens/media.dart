// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

import 'formal.dart';

//

class Sider extends StatelessWidget {
  const Sider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        title: Text('Formal letter samples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
                  Text(
                    '1.',
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/F2.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Dashs())));
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    '2.',
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/F1.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Dash())));
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmmm
//
//first mmmmmmmmmmmmmmmmmmm
class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        title: Text('Zoomable Image'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/F1.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 10,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Formals())));
        },
        child: Image.asset('assets/images/letter.png',
            width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}

class Dashs extends StatelessWidget {
  const Dashs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        title: Text('Zoomable Image'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/F2.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 10,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Formals())));
        },
        child: Image.asset('assets/images/letter.png',
            width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}
