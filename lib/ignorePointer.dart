import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatelessWidget {
  const IgnorePointerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('IgnorePointer Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IgnorePointer(
                ignoring: true,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Button click ignore"),
                    ),
                    TextField()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
