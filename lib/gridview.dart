import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text("GridView Widget")),
        body: Container(
          child: GridView.builder(
            itemCount: 50,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, crossAxisSpacing: 5, mainAxisSpacing: 5),
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: const Text("Item",style: TextStyle(color: Colors.white),),
                );
              }),
        )
        // GridView.count(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10.0,
        //     mainAxisSpacing: 10.0,
        //     children: [
        //       Container(
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //       ),
        //     ]),
        );
  }
}
