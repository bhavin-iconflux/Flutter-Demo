  import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Hero Widget')),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewPage()));
          },
          child: Container(
            width: 100,
            height: 100,
            child: Hero(
              transitionOnUserGestures: true,
                tag: 'dash',
                child: Image.network(
                    "https://images.unsplash.com/photo-1638579837195-3fb3b3287506?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60")),
          ),
        ));
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Hero(
              transitionOnUserGestures: true,
              tag: 'dash',
              child: Image.network(
                  "https://images.unsplash.com/photo-1638579837195-3fb3b3287506?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60")),
        ),
      ),
    );
  }
}
