import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: DismissibleWidgetStateful(),
    );
  }
}

class DismissibleWidgetStateful extends StatefulWidget {
  const DismissibleWidgetStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DismissibleWidgetState();
}

class DismissibleWidgetState extends State<DismissibleWidgetStateful> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible Widget')),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int i) {
            return Dismissible(
                background: Container(color: Colors.orange),
                key: ValueKey<int>(items[i]),
                onDismissed: (DismissDirection direction) {
                  setState(() {
                    items.removeAt(i);
                  });
                },
                child: Container(
                  child: ListTile(title: Text('Item $i')),
                ));
          }),
    );
  }
}
