import 'dart:ffi';

import 'package:flutter/material.dart';

class IntrinsicHeightWidget extends StatelessWidget {
  const IntrinsicHeightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('IntrinsicHeight Widget')),
        body: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 200,
                color: Colors.orange,
              ),
              Container(
                width: 100,
                height: 600,
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
