import 'dart:convert';

import 'package:flutter_demo_1/models/item_model.dart';
import 'package:flutter_demo_1/utils/constants.dart';
import 'package:http/http.dart' show Client;

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'f97aecaad1888d9fa10b78870b6284c2';

  Future<Object> fetchMovieList(int page) async {
    print("Page---->$page");
    final response = await client
        .get(Uri.parse(ApiConstants.tmdbMoviesEndpoint + 'api_key=$_apiKey&page=$page'));
    print(response.body.toString());
    if(response.statusCode == 200){
      return ItemModel.fromJson(json.decode(response.body));
    }else{
      return Exception('Failed to load');
    }
  }
}
