import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flexible Widget',
        home: Scaffold(
          appBar: AppBar(title: const Text('Flexible Widget')),
          body: Center(
            child: Column(
              children: [
                Flexible(
                  flex:1,
                  child: Container(
                    width: 100,
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex:1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  flex:1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text('Flexible',
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
