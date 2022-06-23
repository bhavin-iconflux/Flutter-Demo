import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Widget')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Move to details screen with args'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const NewPage(title: 'Title with args')));
            },
          ),
          ElevatedButton(
            child: const Text('Move to details screen and get back data'),
            onPressed: () {
              _awaitReturnValueFromSecondScreen(context);
            },
          ),
        ],
      )),
    );
  }
}

void _awaitReturnValueFromSecondScreen(BuildContext context) async {
  final result = await Navigator.push(context,
      MaterialPageRoute(builder: (context) => const NewPage(title: '')));
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}

class NewPage extends StatelessWidget {
  final String title;
  const NewPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title.isEmpty ? 'Details Screen' : title)),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Move to previous screen'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: const Text('Move to previous screen with result'),
              onPressed: () {
                Navigator.pop(context,"Result from details screen");
              },
            ),
          ],
        )
      ),
    );
  }
}
