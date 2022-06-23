import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatelessWidget {
  const DropDownButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('DropDownButton Widget')),
      body: const Center(
        child: DropDownButtonStatefulWidget(),
      ),
    );
  }
}

class DropDownButtonStatefulWidget extends StatefulWidget {
  const DropDownButtonStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DropDownButtonState();

}

class DropDownButtonState extends State<DropDownButtonStatefulWidget> {
  String? dropdownValue = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return (DropdownButton(
      icon: const Icon(Icons.arrow_drop_down),
      items: <String>['Item 1', 'Item 2', 'Item 3']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(child: Text(value), value: value);
      }).toList(),
      elevation: 12,
      style: const TextStyle(color: Colors.blue,fontSize: 18),
      value: dropdownValue,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value;
        });
      },
    ));
  }
}
