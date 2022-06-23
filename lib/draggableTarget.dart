import 'package:flutter/material.dart';

class DraggableTargetWidget extends StatelessWidget {
  const DraggableTargetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('DraggableTarget Widget')),
        body: DraggableTragetStateFul());
  }
}

class DraggableTragetStateFul extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => DraggableTragetState();

}

class DraggableTragetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable(
              childWhenDragging: Container(),
              feedback: Container(
                width: 80,
                height: 80,
                child: FlutterLogo(size: 20),
              ),
              child: Container(
                width: 80,
                height: 80,
                child: FlutterLogo(size: 20),
              ),

            ),
            DragTarget(
                onAccept: (data){
                },
                onWillAccept: (data) {
                  print("onWillAccept");
                  return true;
                },
                builder: (BuildContext context, List<dynamic> accepted,
                    List<dynamic> rejected) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  );
                })
          ],
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
}
