import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ButtonStyle style =
        OutlinedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(title: const Text('OutlinedButton Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enable Outlined Button')),
            OutlinedButton(
                style: style,
                onPressed: null,
                child: const Text('Disable Outlined Button'))
          ],
        ),
      ),
    );
  }
}
