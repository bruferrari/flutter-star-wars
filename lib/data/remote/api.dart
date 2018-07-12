import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_star_wars/model/movies_wrapper.dart';

class Api {

  static final String _baseUrl = "https://swapi.co/api/";

  Future<MoviesWrapper> fetchMovies(http.Client client) async {
    final response = await client.get(_baseUrl + 'films');
    return _parseMovies(response.body);
  }

  MoviesWrapper _parseMovies(String responseBody) {
    final parsed = json.decode(responseBody);
    print(parsed['results']);
    return MoviesWrapper.fromJson(parsed);
  }
}