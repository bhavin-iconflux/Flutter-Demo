import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('AbsorbPointer Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AbsorbPointer(
                absorbing: true,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Button click absorb"),
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
