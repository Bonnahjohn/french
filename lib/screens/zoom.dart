import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

import 'informal.dart';

class Zooma extends StatelessWidget {
  const Zooma({Key? key}) : super(key: key);

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
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/images/I2.png',
                  fit: BoxFit.cover,
                ),
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Open())));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/images/I3.png',
                  fit: BoxFit.cover,
                ),
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Opena())));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/images/I4.png',
                  fit: BoxFit.cover,
                ),
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => View())));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  'assets/images/I1.png',
                  fit: BoxFit.cover,
                ),
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Show())));
                },
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

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        title: Text('Zoomable Image'),
      ),
      body: Center(
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/I1.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 10,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Informals())));
        },
        child: Image.asset('assets/images/informal.png',
            width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}

//mmmmmmmmmmmmmmm second zoomable mmmmmmmmmmmm
class View extends StatelessWidget {
  const View({super.key});

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
            'assets/images/I4.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 10,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Informals())));
        },
        child: Image.asset('assets/images/informal.png',
            width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}

//mmmmmmmmmmmmmmm third zoomable mmmmmmmmmmmm
class Open extends StatelessWidget {
  const Open({super.key});

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
            'assets/images/I2.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 10,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Informals())));
        },
        child: Image.asset('assets/images/informal.png',
            width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}

//mmmmmmmmmmmmmmm last zoomable mmmmmmmmmmmm
class Opena extends StatelessWidget {
  const Opena({super.key});

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
            'assets/images/I3.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 10,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Informals())));
        },
        child: Image.asset('assets/images/informal.png',
            width: 60, height: 60, fit: BoxFit.contain),
      ),
    );
  }
}
