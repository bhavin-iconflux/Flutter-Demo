import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/models/item_model.dart';
import 'blocs/movie_bloc.dart';

class BlocPattern extends StatelessWidget {
  const BlocPattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: const Text('API call with Bloc Pattern')),
      body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: BlocPatternStateful()),
    );
  }
}

class BlocPatternStateful extends StatefulWidget {
  const BlocPatternStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BlocPatternState();
}

class BlocPatternState extends State<BlocPatternStateful> {
  List<Object> movieList = [];
  int page = 1;
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieList.clear();
    bloc.fetchAllMovies(page);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    GridView buildList(List movieList) {
      ScrollController _scrollController = ScrollController();
      _scrollController.addListener(() {
        var triggerFetchMoreSize =
            0.9 * _scrollController.position.maxScrollExtent;
        if (_scrollController.position.pixels > triggerFetchMoreSize) {
          if (!isLoading) {
            isLoading = true;
            page++;
            bloc.fetchAllMovies(page);
          }
        }
      });

      return GridView.builder(
          controller: _scrollController,
          itemCount: movieList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8,childAspectRatio: 9 / 13),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width * 0.6,
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://image.tmdb.org/t/p/w500${movieList[index].poster_path}',
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      )),
                    ),
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[350],
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width * 0.6,
                      child: const Icon(Icons.error_outline),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text('${movieList[index].original_title}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        overflow: TextOverflow.ellipsis)),
              ],
            );
          });
    }

    return StreamBuilder(
      stream: bloc.allMovies,
      builder: (BuildContext context, AsyncSnapshot<Object> snapshot) {
        if (snapshot.hasData) {
          isLoading = false;
          ItemModel itemModel = snapshot.data as ItemModel;
          movieList.addAll(itemModel.results);
          return buildList(movieList);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
