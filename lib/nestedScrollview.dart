import 'package:flutter/material.dart';

class NestedScrollViewWidget extends StatelessWidget {
  const NestedScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("NestedScrollView Widget"),
              ),
            )
          ];
        },
        body: CustomScrollView(
          slivers: [
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
      ),
    );
  }
}
