import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Expanded Widget',
        home: Scaffold(
          appBar: AppBar(title: const Text('Expanded Widget')),
          body: Center(
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 120,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: const Text(
                    'Static width',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    'Static width',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text('Expanded',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
