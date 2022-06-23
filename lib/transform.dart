import 'dart:ffi';

import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Transform Widget')),
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 150,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.topCenter,
              child: Transform.scale(
              scale: 0.8,
                child: Image.network("https://fakeimg.pl/100x100/111222/?text=Scale 0.8"),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 150,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: 90,
                child: Image.network("https://fakeimg.pl/100x100/111222/?text=Angle 90"),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 150,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.topLeft,
              child: Transform.translate(
                offset: const Offset(20,20),
                child: Image.network("https://fakeimg.pl/120x100/111222/?text=Offset(20,20)"),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 300,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.topLeft,
              child: Transform(
                transform: Matrix4.skewY(0.15),
                child: Image.network("https://fakeimg.pl/300x150/111222/?text=Matrix4.skewY(0.15)"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
