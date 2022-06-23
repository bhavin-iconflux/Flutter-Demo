import 'package:flutter/material.dart';

PageController controller=PageController();
List<Widget> _list=<Widget>[
  const Center(child:Pages(text: "Page 1",)),
  const Center(child:Pages(text: "Page 2",)),
  const Center(child:Pages(text: "Page 3",)),
  const Center(child:Pages(text: "Page 4",))
];

class Pages extends StatelessWidget {
  final text;
  const Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(text,textAlign: TextAlign.center,style: const TextStyle(
                fontSize: 30,fontWeight:FontWeight.bold)),
          ]
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:const Text('PageView Widget')),
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}
