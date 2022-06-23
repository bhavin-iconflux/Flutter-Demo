import 'package:flutter/material.dart';

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({Key? key}) : super(key: key);

  @override
  InheritedWidgetState createState() => InheritedWidgetState();
}

class InheritedWidgetState extends State<InheritedWidgetExample> {
  int count = 0;
  void addCounter() {
    setState(() {
      count++;
    });
  }

  void removeCounter() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CountState(
      addCounter: addCounter,
      removeCounter: removeCounter,
      count: count,
      child: const InheritedDemo(),
    );
  }
}

class CountState extends InheritedWidget {
  final int count;
  final Widget child;
  final Function addCounter;
  final Function removeCounter;

  const CountState(
      {required this.addCounter,
      required this.removeCounter,
      required this.count,
      required this.child,
      Key? key})
      : super(child: child);

  static CountState? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CountState>());
  }

  @override
  bool updateShouldNotify(CountState oldWidget) {
    // TODO: implement updateShouldNotify
    return count != oldWidget.count;
  }
}

class InheritedDemo extends StatelessWidget {
  const InheritedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final countState = CountState.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Inherited Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Items add & remove: ${countState?.count}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    onPressed: () => countState?.removeCounter(),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    onPressed: () => countState?.addCounter(),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
