import 'package:flutter/material.dart';

class DraggableSheetWidget extends StatelessWidget {
  const DraggableSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text("Draggable Scrollable Sheet")),
        body: DraggableScrollableSheet(
          initialChildSize: .1,
          minChildSize: .1,
          maxChildSize: .8,
          builder:
              (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.blue,
                  child: ListView(
                    controller: scrollController,
                    children: const [
                      ListTile(
                        title: Text('Item 1',style: TextStyle(color: Colors.white)),
                      ),
                      ListTile(
                        title: Text('Item 2',style: TextStyle(color: Colors.white)),
                      ),
                      ListTile(
                        title: Text('Item 3',style: TextStyle(color: Colors.white)),
                      ),
                      ListTile(
                        title: Text('Item 4',style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                );
              },
        ));
  }
}
