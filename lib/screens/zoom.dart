import 'package:flutter/material.dart';

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
              Image.asset(
                'assets/images/I2.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              Image.asset(
                'assets/images/I3.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              Image.asset(
                'assets/images/I4.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.lime[400],
                height: 30,
                thickness: 10,
              ),
              Image.asset(
                'assets/images/I1.png',
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
