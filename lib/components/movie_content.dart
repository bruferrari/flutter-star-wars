import 'package:flutter/material.dart';
import 'package:flutter_star_wars/model/movie.dart';

class MovieContent extends StatelessWidget {

  final Movie movie;

  MovieContent({ this.movie });

  @override
  Widget build(BuildContext context) =>
      movie != null ? _buildContent(context) : _onError();


  Widget _buildContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          Text(
              movie.releaseDate,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          Text(
            movie.producer,
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              movie.openingCrawl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _onError() {
    return Container();
  }

}