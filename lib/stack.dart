import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Stack Widget',
      home: Scaffold(
          appBar: AppBar(title: const Text('Stack Widget')),
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 170,
                  width: 170,
                  color: Colors.white,
                ),
                Container(
                  height: 130,
                  width: 130,
                  color: Colors.orange,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
          )),
    );
  }
}
