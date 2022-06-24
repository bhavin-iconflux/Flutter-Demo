import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/models/Data.dart';
import 'package:flutter_demo_1/utils/constants.dart';
import 'package:http/http.dart' as http;

import 'models/movieResponse.dart';

class APICallExample extends StatelessWidget {
  const APICallExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: APICallStateFul(),
    );
  }
}

class APICallStateFul extends StatefulWidget {
  const APICallStateFul({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => APICallState();
}

class APICallState extends State<APICallStateFul> {
  late Future<List<Data?>?> albumLists;

  @override
  void initState() {
    super.initState();
    albumLists = fetchAlbum();
  }

  Future<List<Data?>?> fetchAlbum() async {
    final response = await http
        .get(Uri.parse(ApiConstants.baseUrl + ApiConstants.moviesEndpoint));

    if (response.statusCode == 200) {
      MovieResponse album = MovieResponse.fromJson(jsonDecode(response.body));
      return album.data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('Movie List'),
        ),
        body: Center(
          child: FutureBuilder<List<Data?>?>(
            future: albumLists,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    itemCount: snapshot.data?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            childAspectRatio: 9 / 14),
                    itemBuilder: (BuildContext context, int i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width * 0.6,
                            child: CachedNetworkImage(
                              imageUrl: "${snapshot.data?[i]?.poster}",
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.fitWidth,
                                )),
                              ),
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Container(
                                    color: Colors.grey[350],
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.width * 0.6,
                                    child: const Icon(Icons.error_outline),
                                  ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text("${snapshot.data?[i]?.title}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  overflow: TextOverflow.clip)),
                        ],
                      );
                    });
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        )));
  }
}
