import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button Widget')),
      body: const Center(child:  Text('Floating Action Button!',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
      floatingActionButton: FloatingActionButton.extended(
        // child: const Icon(Icons.add),
        onPressed: () {},
        icon: const Icon(Icons.add),
        backgroundColor: Colors.orange, label: const Text("Extended"),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );

  }
}
