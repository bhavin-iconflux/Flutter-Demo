import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(title: const Text('ElevatedButton Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enable Elevated Button')),
            ElevatedButton(
                style: style,
                onPressed: null,
                child: Text('Disable Elevated Button'))
          ],
        ),
      ),
    );
  }
}
