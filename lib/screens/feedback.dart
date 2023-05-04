// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'config.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        title: const Text('Feedback'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "We are always striving to make the French Letter Writing app the best it can be, and your feedback can help us achieve that goal. If you come across any errors or have suggestions for how we can improve, please don't hesitate to let us know. Our team is dedicated to addressing any issues that arise and incorporating your feedback into future updates. ",
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.clip,
                strutStyle: StrutStyle(
                    leadingDistribution: TextLeadingDistribution.proportional),
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text:
                        'We value your input and appreciate your support in making our app the most user-friendly and effective tool for learning and mastering French letter writing. Thank you for choosing our app!To share your feedback, please email us at ',
                    style: TextStyle(fontSize: 22, color: Colors.black)),
                TextSpan(
                    text: 'Frenchifyteam@gmail.com',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromRGBO(100, 149, 237, 1)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        final Uri params = Uri(
                          scheme: 'mailto',
                          path: 'Frenchifyteam@gmail.com',
                        );
                        String url = params.toString();
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }),
              ]))
            ],
          ),
        ),
      )),
    );
  }
}

// class ADDS extends StatefulWidget {
//   const ADDS({super.key});

//   @override
//   State<ADDS> createState() => _ADDSState();
// }

// class _ADDSState extends State<ADDS> {
//   late BannerAd _bannerAd;
//   bool _isAdLoaded = false;

//   @override
//   void initState() {
//     super.initState();
//     _initBannerAd();
//   }

//   _initBannerAd() {
//     _bannerAd = BannerAd(
//         size: AdSize.banner,
//         adUnitId: 'ca-app-pub-9379469464236253/2342859552',
//         listener: BannerAdListener(
//           onAdLoaded: (ad) {
//             setState(() {
//               _isAdLoaded = true;
//             });
//           },
//           onAdFailedToLoad: (ad, error) {},
//         ),
//         request: AdRequest());
//     _bannerAd.load();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 50,
//       child: _isAdLoaded
//           ? Container(
//               height: _bannerAd.size.height.toDouble(),
//               width: _bannerAd.size.width.toDouble(),
//               child: AdWidget(ad: _bannerAd),
//             )
//           : const SizedBox(
//               height: 50,
//             ),
//     );
//   }
// }

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 218, 255, 1),
        title: const Text('About Us'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(myNote, style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      )),
      // bottomNavigationBar: ADDS(),
    );
  }
}

// class ADDS extends StatefulWidget {
//   const ADDS({super.key});

//   @override
//   State<ADDS> createState() => _ADDSState();
// }

// class _ADDSState extends State<ADDS> {
//   late BannerAd _bannerAd;
//   bool _isAdLoaded = false;

//   @override
//   void initState() {
//     super.initState();
//     _initBannerAd();
//   }

//   _initBannerAd() {
//     _bannerAd = BannerAd(
//         size: AdSize.banner,
//         adUnitId: 'ca-app-pub-9379469464236253/2342859552',
//         listener: BannerAdListener(
//           onAdLoaded: (ad) {
//             setState(() {
//               _isAdLoaded = true;
//             });
//           },
//           onAdFailedToLoad: (ad, error) {},
//         ),
//         request: AdRequest());
//     _bannerAd.load();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 50,
//       child: _isAdLoaded
//           ? Container(
//               height: _bannerAd.size.height.toDouble(),
//               width: _bannerAd.size.width.toDouble(),
//               child: AdWidget(ad: _bannerAd),
//             )
//           : SizedBox(
//               height: 50,
//             ),
//     );
//   }
// }
