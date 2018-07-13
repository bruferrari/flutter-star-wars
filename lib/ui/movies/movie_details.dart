import 'package:flutter/material.dart';
import 'package:flutter_star_wars/components/movie_content.dart';
import 'package:flutter_star_wars/model/movie.dart';

class MovieDetails extends StatefulWidget {
  MovieDetails({ Key key, this.title, this.movie }) : super(key: key);

  final String title;
  final Movie movie;

  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: MovieContent(movie: widget.movie),
      );
  }

}