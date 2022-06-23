import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatelessWidget {
  const NotificationListenerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        child: CustomScrollView(
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
        onNotification: (scrollInfo){
          if (scrollInfo.metrics.pixels ==
              scrollInfo.metrics.maxScrollExtent) {
           print("Load more----->");
          }
          return false;
        },

      )
    );
  }
}
