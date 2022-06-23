import 'dart:ffi';

import 'package:flutter/material.dart';

class OffstageWidget extends StatelessWidget {
  const OffstageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final GlobalKey _key = GlobalKey();

    Size _getContainerSize() {
      final RenderBox renderContainer =
          _key.currentContext!.findRenderObject()! as RenderBox;
      return renderContainer.size;
    }

    return Scaffold(
        appBar: AppBar(title: const Text('Offstage Widget')),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: true,
              child: Container(
                key: _key,
                width: 100,
                height: 120,
                color: Colors.orange,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                      Text('Container size is ${_getContainerSize()}'),
                    ),
                  );
                },
                child: const Text('Get OffStage Widget Size'))
          ],
        )));
  }
}
