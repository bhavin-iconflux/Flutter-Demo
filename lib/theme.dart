import 'package:flutter/material.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appName = 'Flutter Widget Demo';
    // TODO: implement build
    return MaterialApp(
        title: appName,
        theme: ThemeData(
          primaryColor: Colors.orange,
          appBarTheme: const AppBarTheme(),
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              headline2: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              ),
        ),
        home: const MyTheme(title: appName));
  }
}

class MyTheme extends StatelessWidget {
  final String title;
  const MyTheme({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
            color: Theme.of(context).primaryColor,
            width: 250,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                      'Container Primary color set from theme and text style from text theme',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2),
                ),
              ],
            )),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.red)),
        child: FloatingActionButton(
          tooltip: 'Add',
            onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}
