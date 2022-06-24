import 'package:flutter_demo_1/models/item_model.dart';
import 'package:flutter_demo_1/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc{
  final _repository = Repository();
  final _movieFetcher = PublishSubject<Object>();

  Stream<Object> get allMovies => _movieFetcher.stream;

  fetchAllMovies(int page) async{
    ItemModel itemModel = await _repository.fetchAllMovies(page) as ItemModel;
    _movieFetcher.sink.add(itemModel);
  }

  dispose(){
    _movieFetcher.close();
  }
}
final bloc = MovieBloc();