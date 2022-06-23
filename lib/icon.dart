import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Icon Widget',
        home: Scaffold(
          appBar: AppBar(title: const Text('Icon Widget')),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.help,
                  size: 25,
                ),
                Icon(
                  Icons.menu_book,
                  size: 30,
                ),
                Icon(
                  Icons.build,
                  size: 35,
                ),
              ],
            ),
          ),
        ));
  }
}
