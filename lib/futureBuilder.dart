import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({Key? key}) : super(key: key);

  @override
  FutureBuilderWidgetState createState() => FutureBuilderWidgetState();
}

class FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  late Future<List<String>> itemList;

  @override
  void initState() {
    super.initState();
    itemList = fetchAPIData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Future Builder Widget')),
        body: Center(
          child: FutureBuilder<List<String>>(
            future: itemList,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(height: 10),
                        Text(
                          "Loading...",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ]);
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data?.toList().length,
                      itemBuilder: (BuildContext context, int index) {
                        return (Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            color: Colors.blue,
                            child: Text(
                                snapshot.data?[index].toString() ?? "Test",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ));
                      },
                    );
                  }
                default:
                  return const Text('Unhandled State');
              }
            },
          ),
        ));
  }

  Future<List<String>> fetchAPIData() =>
      Future.delayed(const Duration(seconds: 5)).then(
        (value) => ['Item1', 'Item2', 'Item3', 'Item4'],
      );
}
