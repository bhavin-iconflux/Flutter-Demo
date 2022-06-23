import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Widget')),
      body: const Center(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.map),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  alignLabelWithHint: true,
                  hintText: "Name",
                  suffixIcon: Icon(Icons.add),
                  contentPadding: EdgeInsets.all(25),
                  border: OutlineInputBorder(),
                  labelText: "Enter Name"),
            )),
      ),
    );
  }
}
