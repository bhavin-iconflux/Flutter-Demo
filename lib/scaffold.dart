import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Scaffold Widget')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.help,
                size: 25,
              ),
              Icon(
                Icons.menu_book,
                size: 30,
              ),
              Icon(
                Icons.build,
                size: 35,
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text("Drawer using scaffold")),
              ListTile(title: Text('Add Menu'),leading: Icon(Icons.add)),
              ListTile(title: Text('Receipt'),leading: Icon(Icons.receipt)),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Star', icon: Icon(Icons.star)),
            BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.build))
          ],
          onTap: (int indexOfItem) {},
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.add),
            onPressed: () {
              // action on button press
            }));
  }
}
