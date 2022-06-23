import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Button Widget',
        home: Scaffold(
          appBar: AppBar(title: const Text('Button Widget')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 10))),
                  child: const Text('Elevated Enabled Button'),
                  onPressed: () {},
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 10))),
                  child: const Text('Elevated Disabled Button'),
                  onPressed: null,

                ),
              ],
            ),
          ),
        ));
  }
}
