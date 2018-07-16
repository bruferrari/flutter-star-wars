import 'package:flutter/material.dart';
import 'package:flutter_star_wars/components/list_cell.dart';
import 'package:flutter_star_wars/model/movies_wrapper.dart';

class MoviesListWidget extends StatelessWidget {
  final MoviesWrapper wrapper;

  MoviesListWidget({Key key, this.wrapper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: wrapper.movies.length,
        itemBuilder: (context, index) {
          return ListCell(movies: wrapper.movies, index: index);
        });
  }
}