import 'package:flutter/material.dart';
import 'package:flutter_star_wars/components/list.dart';
import 'package:flutter_star_wars/data/remote/api.dart';
import 'package:flutter_star_wars/model/movies_wrapper.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_star_wars/components/progress_indicator.dart';

class MoviesList extends StatefulWidget {
  MoviesList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MoviesListState createState() => new _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {

  final _api = Api();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: FutureBuilder<MoviesWrapper>(
        future: _api.fetchMovies(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print('ERROR: ' + snapshot.error.toString());

          return snapshot.hasData
              ? MoviesListWidget(wrapper: snapshot.data)
              : ActivityIndicator();
        },
      ),
    );
  }

}

