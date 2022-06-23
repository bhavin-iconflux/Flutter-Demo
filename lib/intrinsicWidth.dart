import 'dart:ffi';

import 'package:flutter/material.dart';

class IntrinsicWidthWidget extends StatelessWidget {
  const IntrinsicWidthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('IntrinsicWidth Widget')),
        body: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
