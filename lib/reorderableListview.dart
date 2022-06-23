import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatelessWidget {
  const ReorderableListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> items = List<int>.generate(100, (int index) => index);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('ReorderableListView Widget')),
      body: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {

        },
        children: [
          for (int index = 0; index < items.length; index += 1)
            ListTile(
              key: Key('$index'),
              title: Text('Item ${items[index]}'),
            ),
        ],

      ),
    );
  }
}
