import 'package:flutter/material.dart';

var height, width, size, orientation;

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    size = MediaQuery.of(context).size;
    orientation= MediaQuery.of(context).orientation;
    height = size.height;
    width = size.width;
    return Scaffold(
        appBar: AppBar(title: const Text('MediaQuery Widget')),
        body: Center(
            child: Column(
          children: [
            Container(
              color: Colors.orange,
              height: height / 4,
              width: width / 4,
            ),
            Container(
              color: orientation==Orientation.portrait?Colors.blue:Colors.green,
              height:orientation==Orientation.portrait?height/4:height/3,
              width:orientation==Orientation.portrait?width/4:width/3,
            )
          ],
        )));
  }
}
