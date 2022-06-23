import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: false,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flexible SpaceBar"),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text("Remaining Space")],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            for (var i = 0; i <= 100; i++)
              ListTile(
                leading: const CircleAvatar(),
                title: Text(i.toString()),
              ),
          ]))
        ],
      ),
    );
  }
}
