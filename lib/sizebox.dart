import 'dart:ffi';

import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('SizeBox Widget')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Container(
                width: 500,
                height: 500,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
            ),
          ],
        )));
  }
}
