import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  const RefreshIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
        GlobalKey<RefreshIndicatorState>();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Refresh Indicator Widget')),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 2.0,
        onRefresh: () {
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        // child: const Icon(Icons.add),
        onPressed: () {
          print("clicked");
          _refreshIndicatorKey.currentState?.show();
        },
        icon: const Icon(Icons.add),
        backgroundColor: Colors.blue, label: const Text("Show refresh indicator"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
