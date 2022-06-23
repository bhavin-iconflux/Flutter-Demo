import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: PopupMenuButtonStateFul(),
    );
  }
}

class PopupMenuButtonStateFul extends StatefulWidget {
  const PopupMenuButtonStateFul({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PopupMenuButtonState();
}

class PopupMenuButtonState extends State<PopupMenuButtonStateFul> {
  String selectedValue='';
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu Button'),
        actions: [
          PopupMenuButton(
            onSelected: (String value){
              print(value);
              selectedValue=value;
            },
            itemBuilder: (context) => [
              const PopupMenuItem(child: Text('Item1'),value:'Item1111'),
              const PopupMenuItem(child: Text('Item2'),value:'Item2111'),
              const PopupMenuItem(child: Text('Item3'),value:'Item31111'),
            ],
            offset: const Offset(0, 50),
            elevation: 5,

          )
        ],
      ),
      body: Center(
        child: Text("$selectedValue value selected"),
      ),
    ));
  }
}
