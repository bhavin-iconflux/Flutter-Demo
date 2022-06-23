import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({Key? key}) : super(key: key);

  @override
  StreamBuilderWidgetState createState() => StreamBuilderWidgetState();
}

class StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  int _counter = 0;
  late StreamController<int> _events;

  @override
  void initState() {
    super.initState();
    _events = StreamController<int>();
    _events.sink.add(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Builder Widget')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("How many time button pressed",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          StreamBuilder(
              stream: _events.stream,
              builder: (BuildContext context, snapshot) {
                print(snapshot.connectionState);
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(color: Colors.blue,),
                          SizedBox(height: 10),
                          Text(
                            "Loading...",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ]);
                  case ConnectionState.active:
                    return Text(snapshot.data.toString(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold));
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      return Text(snapshot.data.toString());
                    }
                  default:
                    return const Text('Unhandled State');
                }
              })
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          incrementCounter();
        }),
        child: const Icon(Icons.add),
      ),
    );
  }

  void incrementCounter() {
    _counter++;
    _events.add(_counter);
  }
}
