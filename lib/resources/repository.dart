import 'package:flutter_demo_1/resources/movie_api_provider.dart';

class Repository{
  final movieProvider = MovieApiProvider();

  Future<Object> fetchAllMovies(int page) => movieProvider.fetchMovieList(page);
}