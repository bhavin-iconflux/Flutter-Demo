import 'package:flutter/material.dart';

class ScrollbarWidget extends StatelessWidget {
  const ScrollbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Scrollbar Widget')),
      body: Scrollbar(
        trackVisibility: false,
        isAlwaysShown: true,
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int i) {
              return (Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text("item $i",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ));
            }),
      ),
    );
  }
}
