import 'package:flutter_star_wars/model/movie.dart';

class MoviesWrapper {
  final int count;
  final int next;
  final int previous;
  final List<Movie> movies;

  MoviesWrapper({this.count, this.next, this.previous, this.movies});

  factory MoviesWrapper.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;

    List<Movie> moviesList = list.map((i) => Movie.fromJson(i)).toList();
    return new MoviesWrapper(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      movies: moviesList
    );
  }
}