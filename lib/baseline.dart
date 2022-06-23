import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Baseline Widget')),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Baseline(
              baseline: 20,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                color: Colors.orange,
                height: 50,
                width: 50,
              ),
            ),
          ),
        ));
  }
}
