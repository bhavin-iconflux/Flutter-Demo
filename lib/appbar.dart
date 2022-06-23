import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Appbar Widget',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
              toolbarHeight: 60.2,
              toolbarOpacity: 0.8,
              elevation: 3,
              actions: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.login),tooltip: 'Login'),
                IconButton(onPressed: (){}, icon: const Icon(Icons.help),tooltip: 'Help'),
              ],
              backgroundColor: Colors.lightBlueAccent,
              leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu), tooltip: 'Menu',),

              title: const Text(
            'Appbar Widget',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),

          )),
        )
    );
  }
}
