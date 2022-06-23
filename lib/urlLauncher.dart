import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPackage extends StatelessWidget {
  const UrlLauncherPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Url Launcher Package')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10))),
              child: const Text('Make a phone call'),
              onPressed: () {
                _makePhoneCall('9909195635');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10))),
              child: const Text('Send SMS'),
              onPressed: () {
                sendSMS('9909195635');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 10))),
              child: const Text('Send Email'),
              onPressed: () {
                sendEmail('bhavin.rakholiya@iconflux.com');
              },
            ),
          ],
        )));
  }
}

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> sendSMS(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'sms',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> sendEmail(String email) async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  await launchUrl(launchUri);
}
