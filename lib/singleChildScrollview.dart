import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('SingleChildScrollView Widget')),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Container(
                height: 125,
                width: 125,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
            ],
          ),
        )));
  }
}
