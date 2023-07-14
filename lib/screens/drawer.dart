// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'feedback.dart';
import 'translator.dart';
import 'package:get/get.dart';

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
          //mmmmmmmmmmmmmmmmmmmmmmm home
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
            onTap: () {
              Navigator.pop(context);
            },
          ),
          //mmmmmmmmmmmmmmmmmmmmmm translator
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
            onTap: () {
              Get.to(() => Translator());
            },
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
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => About())));
            },
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Feedbacks())));
            },
          ),
          //mmmmmmmmmmmm Privacy policy
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
